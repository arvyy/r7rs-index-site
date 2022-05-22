(define-library
  (scmindex types-parser)
  (import (scheme base)
          (scheme cxr)
          (scheme file)
          (scheme read)
          (scheme write)
          (only (srfi 1) lset-adjoin lset-difference alist-cons alist-delete delete-duplicates filter)
          (scmindex domain)
          (arvyy slf4j))

  (export read-specs 
          read-spec
          make-type-maps
          flatten-type
          )
  (begin

    (define logger (get-logger "types-parser"))

    (define (read-specs index-file)
      (log-info logger "Reading specs from index file {}" index-file)
      (with-input-from-file 
        index-file
        (lambda ()
          (define lst (read))
          (define funcs*
            (map
              (lambda (entry)
                (log-info logger "Reading specs from data file {} for lib {}" (cdr entry) (car entry))
                (with-input-from-file
                  (cdr entry)
                  (lambda ()
                    (read-spec (car entry)
                               (read)))))
              lst))
          (apply append funcs*))))

    (define (assoc* key alist default)
        (cond
            ((assoc key alist) => cdr)
            (else default)))

    (define (read-spec lib input)
      (map
        (lambda (entry)
          (define name (let ((n (assoc* 'name entry #f)))
                         (unless n
                            (error "Missing name attribute"))
                         (log-debug logger "Reading spec {}" n)
                         n))
          (define signature (let ((s (assoc* 'signature entry #f)))
                                (unless s
                                    (error "Missing signature attribute"))
                                s))
          (define-values
            (supertypes param-names param-types return-types)
            (case (car signature)
              ((lambda)
               (values (assoc* 'supertypes entry '())
                       (extract-param-names signature)
                       (extract-param-types signature)
                       (extract-return-types signature)))
              ((syntax-rules)
               (values '()
                       (extract-syntax-names signature)
                       (extract-syntax-param-types (assoc* 'syntax-param-types entry '()))
                       (extract-syntax-return-types signature)))
              ((value)
               (values '()
                       '()
                       '()
                       (list (cadr signature))))
              (else (error (string-append "Unrecognized signature for " (->string name))))))
          (define tags (assoc* 'tags entry '()))
          (define param-signatures (assoc* 'subsigs entry '()))
          (make-func lib name param-names signature param-signatures tags param-types return-types supertypes))
        input))

    (define (extract-param-names signature)
      (define params-list (cadr signature))
      (define lst* (map
                     (lambda (param)
                       (cond
                         ((list? param) (list (cadr param)))
                         ((or (equal? '... param)
                              (equal? #f param)
                              (equal? #t param)) (list))
                         (else (list param))))
                     params-list))
      (apply append lst*))

    (define (extract-syntax-names signature)
      (define literals (cadr signature))
      (define (do-extract fragment)
        (cond
          ((or (equal? '... fragment)
               (null? fragment)) 
           (list))
          ((symbol? fragment) 
           (lset-difference equal? (list fragment) literals))
          ((pair? fragment)
           (lset-difference equal? 
                            (append (do-extract (car fragment))
                                    (do-extract (cdr fragment)))
                            literals))))
      (let* ((result (map
                       (lambda (rule)
                         (do-extract (cdar rule)))
                       (cddr signature)))
             (result (apply append result))
             (result (delete-duplicates result equal?)))
        result))

    (define (extract-syntax-return-types signature)
        (let* ((rules (cddr signature))
               (rules (filter (lambda (rule) (> (length rule) 1)) rules))
               (returns (map cadr rules))
               (types (map parse-type-from-return returns)))
            (delete-duplicates (apply append types))))

    (define (extract-syntax-param-types param-types)
        (define types (map
                        (lambda (param-type)
                            (parse-type-from-param (cdr param-type)))
                        param-types))
        (apply append types))

    (define (extract-param-types signature)
      (define params-list (cadr signature))
      (define lst* (map
                     (lambda (param)
                       (cond
                         ((list? param)
                          (let ((value (car param)))
                            (parse-type-from-param value)))
                         (else (list))))
                     params-list))
      (apply append lst*))

    (define (parse-type-from-param value)
        (define types
            (cond
                  ((and (list? value) (equal? 'or (car value)))
                   (cdr value))
                  ((list? value) (error (string-append "Bad signature: " (->string signature))))
                  ((symbol? value) (list value))
                  ((equal? #f value) (list))
                  (else (error (string-append "Bad signature: " (->string signature))))))
        (filter symbol? types))

    (define (parse-type-from-return value)
        (cond
          ((or (equal? '* value)
               (equal? '... value)
               (equal? 'undefined value)
               (equal? #f value))
           (list))
          ((symbol? value) (list value))
          ((and (list? value)
                (or (equal? 'values (car value))
                    (equal? 'or (car value))))
           (apply append (map parse-type-from-return (cdr value))))
          (else (list))))

    (define (extract-return-types signature)
      (when (< (length signature) 3)
        (error (string-append "Bad signature: " (->string signature))))
      (parse-type-from-return (caddr signature)))

    (define (make-type-maps funcs)
      (define (make-entries strict)
        (define entries*
          (map
            (lambda (func)
              (define supertypes (func-supertypes func))
              (define type (func-name func))
              (cond
                ((or (not supertypes) (null? supertypes)) '())
                ((and strict (not (null? (cdr supertypes)))) '())
                (else (map
                        (lambda (supertype)
                          (cons type supertype))
                        supertypes))))
            funcs))
        (apply append entries*))
      (define entries-strict (make-entries #t))
      (define entries-loose (make-entries #f))
      (define supertype-map (make-multivalue-alist entries-loose car cdr))
      (define subtype-loose-map (make-multivalue-alist entries-loose cdr car))
      (define subtype-strict-map (make-multivalue-alist entries-strict cdr car))
      (values supertype-map subtype-strict-map subtype-loose-map))

    (define (make-multivalue-alist entries key-proc value-proc)
      (let loop ((alist '())
                 (entries entries))
        (cond
          ((null? entries) alist)
          (else (let* ((e (car entries))
                       (key (key-proc e))
                       (value (value-proc e)))
                  (cond
                    ((assoc key alist) 
                     => (lambda (alist-entry)
                          (define new-list (lset-adjoin equal? (cdr alist-entry) value))
                          (define new-alist
                            (if (eq? new-list (cdr alist-entry))
                                alist
                                (alist-cons key new-list (alist-delete key alist)))  )
                          (loop new-alist (cdr entries))))
                    (else (loop (alist-cons key (list value) alist)
                                (cdr entries)))))))))

    (define (flatten-type type-map types)
      (let loop ((result '())
                 (q types))
        (define to-add (lset-difference equal? q result))
        (define new-q* (map 
                         (lambda (type)
                           (cond
                             ((assoc type type-map) => cdr)
                             (else '())))
                         to-add))
        (define new-q
          (delete-duplicates
            (apply append new-q*)))

        (if (null? to-add)
            result
            (loop (append to-add result)
                  new-q))))

    ;;TODO move to util
    (define (->string obj)
      (define port (open-output-string))
      (write obj port)
      (get-output-string port))

    )
  )
