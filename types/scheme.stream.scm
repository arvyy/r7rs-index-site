(((name . stream-null) (signature value stream-null?))
 ((name . stream-cons)
  (signature syntax-rules () ((_ obj stream) stream-pair?))
  (tags pure)
  (syntax-param-signatures (stream stream?)))
 ((name . stream?) (signature lambda (obj) boolean?) (tags pure predicate))
 ((name . stream-null?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (subsigs)
  (supertypes stream?))
 ((name . stream-pair?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (subsigs)
  (supertypes stream?))
 ((name . stream-car) (signature lambda ((stream-pair? stream)) *) (tags pure))
 ((name . stream-cdr)
  (signature lambda ((stream-pair? stream)) stream?)
  (tags pure))
 ((name . stream-lambda)
  (signature syntax-rules () ((_ formals body) procedure?))
  (subsigs
   (formals
    (variable1 ...)
    variable
    (variable1 ... variable_n . variable_n+1))))
 ((name . define-stream)
  (signature
   syntax-rules
   ()
   ((_ (variable parameter1 ...) body))
   ((_ (variable parameter1 ... . parameter) body))))
 ((name . list->stream)
  (signature lambda ((list? list-of-objects)) stream?)
  (tags pure))
 ((name . port->stream) (signature lambda () stream?) (tags parameterized))
 ((name . port->stream) (signature lambda ((input-port? port)) stream?))
 ((name . stream) (signature syntax-rules () ((_ object ...) stream?)) (tags pure))
 ((name . stream->list)
  (signature lambda ((stream? stream)) list?)
  (tags pure))
 ((name . stream->list)
  (signature lambda ((integer? n) (stream? stream)) list?)
  (tags pure))
 ((name . stream-append)
  (signature lambda ((stream? stream) ...) stream?)
  (tags pure))
 ((name . stream-concat)
  (signature lambda ((stream? stream-of-streams)) stream?)
  (tags pure))
 ((name . stream-constant) (signature lambda (object ...) stream?) (tags pure))
 ((name . stream-drop)
  (signature lambda ((integer? n) (stream? stream)) stream?)
  (tags pure))
 ((name . stream-drop-while)
  (signature lambda ((procedure? pred?) (stream? stream)) stream?)
  (tags pure)
  (subsigs (pred? (lambda (obj) boolean?))))
 ((name . stream-filter)
  (signature lambda ((procedure? pred?) (stream? stream)) stream?)
  (tags pure)
  (subsigs (pred? (lambda (obj) boolean?))))
 ((name . stream-fold)
  (signature lambda ((procedure? proc) base (stream? stream)) *)
  (tags pure)
  (subsigs (proc (lambda (base element) *))))
 ((name . stream-for-each)
  (signature lambda ((procedure? proc) (stream? stream1) ...) undefined)
  (subsigs (proc (lambda (element1 ...) undefined))))
 ((name . stream-from) (signature lambda ((number? from)) stream?) (tags pure))
 ((name . stream-from)
  (signature lambda ((number? from) (number? step)) stream?)
  (tags pure))
 ((name . stream-iterate)
  (signature lambda ((procedure? proc) base) stream?)
  (tags pure)
  (subsigs (proc (lambda (element) *))))
 ((name . stream-length)
  (signature lambda ((stream? stream)) integer?)
  (tags pure))
 ((name . stream-let)
  (signature syntax-rules () ((_ tag ((var expr) ...) body))))
 ((name . stream-map)
  (signature lambda ((procedure? proc) (stream? stream1) ...) stream?)
  (subsigs (proc (lambda (element1 ...) *))))
 ((name . stream-match)
  (signature syntax-rules (_) ((_ stream clause ...)))
  (subsigs
   (clause () (pat0 pat1 ...) (pat0 pat1 ... . pat_rest) pat)
   (pat identifier _))
  (syntax-param-signatures (stream stream?)))
 ((name . stream-of)
  (signature syntax-rules (in is) ((_ expr clause ...) stream?))
  (subsigs (clause (var in stream-expr) (var is expr) (pred? expr))))
 ((name . stream-range)
  (signature lambda ((real? first) (real? past)) stream?)
  (tags pure))
 ((name . stream-range)
  (signature lambda ((real? first) (real? past) (real? step)) stream?)
  (tags pure))
 ((name . stream-ref)
  (signature lambda ((stream? stream) (integer? n)) *)
  (tags pure))
 ((name . stream-reverse)
  (signature lambda ((stream? stream)) stream?)
  (tags pure))
 ((name . stream-scan)
  (signature lambda ((procedure? proc) base (stream? stream)) stream?)
  (tags pure)
  (subsigs (proc (lambda (base element) *))))
 ((name . stream-take)
  (signature lambda ((integer? n) (stream? stream)) stream?)
  (tags pure))
 ((name . stream-take-while)
  (signature lambda ((procedure? pred?) (stream? stream)) stream?)
  (tags pure)
  (subsigs (pred? (lambda (obj) boolean?))))
 ((name . stream-unfold)
  (signature
   lambda
   ((procedure? map) (procedure? pred?) (procedure? gen) base)
   stream?)
  (tags pure)
  (subsigs
   (map (lambda (base) *))
   (pred? (lambda (base) boolean?))
   (gen (lambda (base) *))))
 ((name . stream-unfolds)
  (signature lambda ((procedure? proc) seed) (values stream? ...))
  (tags pure)
  (subsigs (proc (lambda (seed) (values (or list? #f) * ...)))))
 ((name . stream-zip)
  (signature lambda ((stream? stream) ...) stream?)
  (tags pure)))
