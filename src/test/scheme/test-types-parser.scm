(test-group
  "Test function general"
  (define spec-raw
    `((name . integer?)
      (signature . (lambda (obj) boolean?))
      (tags . (pure predicate))
      (supertypes . (number?))))
  (define f (car (read-spec '(test lib) (list spec-raw))))
  (define f* (index-entry->json f))
  (test-equal '(test lib) (index-entry-lib f))
  (test-equal "(test lib)" (cdr (assoc 'lib f*)))
  (test-equal 'integer? (index-entry-name f))
  (test-equal "integer?" (cdr (assoc 'name f*)))
  (test-equal '(obj) (index-entry-param-names f))
  (test-equal #("obj") (cdr (assoc 'param_names f*)))
  (test-equal '(boolean?) (index-entry-return-types f))
  (test-equal #("boolean?") (cdr (assoc 'return_types f*)))
  (test-equal '() (index-entry-param-types f))
  (test-equal #() (cdr (assoc 'param_types f*)))
  (test-equal '(pure predicate) (index-entry-tags f))
  (test-equal #("pure" "predicate") (cdr (assoc 'tags f*)))
  (test-equal '(number?) (index-entry-supertypes f))
  (test-equal #("number?") (cdr (assoc 'super_types f*))))

(test-group
  "Test function parameter name parsing"
  (define specs
    (read-spec '(test lib)
               `(
                 ((name . f1)
                  (signature . (lambda () *)))
                 ((name . f2)
                  (signature . (lambda (obj1 obj2 ...) *)))
                 ((name . f3)
                  (signature . (lambda ((string? str) ... (#f obj2)) *)))
                 )))
  (test-equal '() (index-entry-param-names (list-ref specs 0)))
  (test-equal '(obj1 obj2) (index-entry-param-names (list-ref specs 1)))
  (test-equal '(str obj2) (index-entry-param-names (list-ref specs 2))))

(test-group
  "Test function parameter type parsing"
  (define specs
    (read-spec '(test lib)
               `(
                 ((name . f1)
                  (signature . (lambda () *)))
                 ((name . f2)
                  (signature . (lambda (obj) *)))
                 ((name . f3)
                  (signature . (lambda ((string? str) (#f int)) *)))
                 ((name . f4)
                  (signature . (lambda (((or #f string?) str)) *))))))
  (test-equal '() (index-entry-param-types (list-ref specs 0)))
  (test-equal '() (index-entry-param-types (list-ref specs 1)))
  (test-equal '(string?) (index-entry-param-types (list-ref specs 2)))
  (test-equal '(string?) (index-entry-param-types (list-ref specs 3))))

(test-group
  "Test function return type parsing"
  (define specs
    (read-spec '(test lib)
                `(
                  ((name . f1)
                   (signature . (lambda () *)))
                  ((name . f2)
                   (signature . (lambda () undefined)))
                  ((name . f3)
                   (signature . (lambda () string?)))
                  ((name . f4)
                   (signature . (lambda () (or integer? string?))))
                  ((name . f5)
                   (signature . (lambda () (or #f string?))))
                  ((name . f6)
                   (signature . (lambda () (values integer? string? ...)))))))
  (test-equal '() (index-entry-return-types (list-ref specs 0)))
  (test-equal '() (index-entry-return-types (list-ref specs 1)))
  (test-equal '(string?) (index-entry-return-types (list-ref specs 2)))
  (test-equal '(integer? string?) (index-entry-return-types (list-ref specs 3)))
  (test-equal '(string?) (index-entry-return-types (list-ref specs 4)))
  (test-equal '(integer? string?) (index-entry-return-types (list-ref specs 5))))

(test-group
  "Test subtyping"
  ;;
  ;;  A?  B?
  ;; /  \ |
  ;; E?  C?
  ;; |   |
  ;; F?  D?
  ;;
  (define specs
    (read-spec '(test lib)
               `(
                 ((name . A?)
                  (signature . (lambda (obj) boolean?))
                  (tags . (pure predicate)))
                 ((name . B?)
                  (signature . (lambda (obj) boolean?))
                  (tags . (pure predicate)))
                 ((name . C?)
                  (signature . (lambda (obj) boolean?))
                  (tags . (pure predicate))
                  (supertypes . (A? B?)))
                 ((name . D?)
                  (signature . (lambda (obj) boolean?))
                  (tags . (pure predicate))
                  (supertypes . (C?)))
                 ((name . E?)
                  (signature . (lambda (obj) boolean?))
                  (tags . (pure predicate))
                  (supertypes . (A?)))
                 ((name . F?)
                  (signature . (lambda (obj) boolean?))
                  (tags . (pure predicate))
                  (supertypes . (E?))))))
      (define-values
        (supertype-map subtype-strict-map subtype-loose-map)
        (make-type-maps specs))

      ;;supertype
      (test-assert (lset= equal? '(A?) (flatten-type supertype-map '(A?))))
      (test-assert (lset= equal? '(B?) (flatten-type supertype-map '(B?))))
      (test-assert (lset= equal? '(A? B? C?) (flatten-type supertype-map '(C?))))
      (test-assert (lset= equal? '(A? B? C? D?) (flatten-type supertype-map '(D?))))
      (test-assert (lset= equal? '(A? E?) (flatten-type supertype-map '(E?))))
      (test-assert (lset= equal? '(A? E? F?) (flatten-type supertype-map '(F?))))

      ;;subtype strict
      (test-assert (lset= equal? '(A? E? F?) (flatten-type subtype-strict-map '(A?))))
      (test-assert (lset= equal? '(B?) (flatten-type subtype-strict-map '(B?))))
      (test-assert (lset= equal? '(C? D?) (flatten-type subtype-strict-map '(C?))))
      (test-assert (lset= equal? '(D?) (flatten-type subtype-strict-map '(D?))))
      (test-assert (lset= equal? '(E? F?) (flatten-type subtype-strict-map '(E?))))
      (test-assert (lset= equal? '(F?) (flatten-type subtype-strict-map '(F?))))

      ;;subtype loose
      (test-assert (lset= equal? '(A? C? D? E? F?) (flatten-type subtype-loose-map '(A?))))
      (test-assert (lset= equal? '(B? C? D?) (flatten-type subtype-loose-map '(B?))))
      (test-assert (lset= equal? '(C? D?) (flatten-type subtype-loose-map '(C?))))
      (test-assert (lset= equal? '(D?) (flatten-type subtype-loose-map '(D?))))
      (test-assert (lset= equal? '(E? F?) (flatten-type subtype-loose-map '(E?))))
      (test-assert (lset= equal? '(F?) (flatten-type subtype-loose-map '(F?)))))

(test-group
  "Test kawa mangling"
  (define specs
    (read-spec '(test lib)
               `(
                 ((name . ->char-set)
                  (signature . (lambda ((char? x)) string?)))

                 ((name . |char-set:lower-case|)
                  (signature . (value char-set?))))))
  ;; test workaround works to prevent kawa mangling
  (let ((f (list-ref specs 0)))
    (test-equal '|->char-set| (index-entry-name f))
    (test-equal "->char-set" (cdr (assoc 'name (index-entry->json f)))))

  (let ((f (list-ref specs 1)))
    (test-equal '|char-set:lower-case| (index-entry-name f))
    (test-equal "char-set:lower-case" (cdr (assoc 'name (index-entry->json f))))))
