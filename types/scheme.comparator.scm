(((name . comparator?) (signature lambda (obj) boolean?) (tags pure predicate))
 ((name . comparator-ordered?)
  (signature lambda ((comparator? comparator)) boolean?)
  (tags pure))
 ((name . comparatory-hashable?)
  (signature lambda ((comparator? comparator)) boolean?)
  (tags pure))
 ((name . make-comparator)
  (signature
   lambda
   ((procedure? type-test)
    (procedure? equality)
    ((or procedure? #f) ordering)
    ((or procedure? #f) hash))
   comparator?)
  (tags pure)
  (subsigs
   (type-test (lambda (obj) boolean?))
   (equality (lambda (obj1 obj2) boolean?))
   (ordering (lambda (obj1 obj2) boolean?))
   (hash (lambda (obj) integer?))))
 ((name . make-pair-comparator)
  (signature
   lambda
   ((comparator? car-comparator) (comparator? cdr-comparator))
   comparator?)
  (tags pure))
 ((name . make-list-comparator)
  (signature
   lambda
   ((comparator? element-comparator)
    (procedure? type-test)
    (procedure? empty?)
    (procedure? head)
    (procedure? tail))
   comparator?)
  (tags pure)
  (subsigs
   (type-test (lambda (obj) boolean?))
   (empty? (lambda (obj) boolean?))
   (head (lambda (obj) *))
   (tail (lambda (obj) *))))
 ((name . make-vector-comparator)
  (signature
   lambda
   ((comparator? element-comparator)
    (procedure? type-test)
    (procedure? length)
    (procedure? ref))
   comparator?)
  (tags pure)
  (subsigs
   (type-test (lambda (obj) boolean?))
   (length (lambda (obj) integer?))
   (ref (lambda (vec (integer? index)) *))))
 ((name . make-eq-comparator) (signature lambda () comparator?) (tags pure))
 ((name . make-eqv-comparator) (signature lambda () comparator?) (tags pure))
 ((name . make-equal-comparator) (signature lambda () comparator?) (tags pure))
 ((name . boolean-hash) (signature lambda (obj) integer?) (tags pure))
 ((name . char-hash) (signature lambda (obj) integer?) (tags pure))
 ((name . char-ci-hash) (signature lambda (obj) integer?) (tags pure))
 ((name . string-hash) (signature lambda (obj) integer?) (tags pure))
 ((name . string-ci-hash) (signature lambda (obj) integer?) (tags pure))
 ((name . symbol-hash) (signature lambda (obj) integer?) (tags pure))
 ((name . number-hash) (signature lambda (obj) integer?) (tags pure))
 ((name . hash-bound) (signature syntax-rules () ((_) integer?)) (tags))
 ((name . hash-salt) (signature syntax-rules () ((_) integer?)) (tags))
 ((name . make-default-comparator) (signature lambda () comparator?))
 ((name . default-hash) (signature lambda (obj) integer?))
 ((name . comparator-register-default!)
  (signature lambda ((comparator? comparator)) undefined))
 ((name . comparator-type-test-predicate)
  (signature lambda ((comparator? comparator)) procedure?)
  (tags pure)
  (subsigs (return (lambda (obj) boolean?))))
 ((name . comparator-equality-predicate)
  (signature lambda ((comparator? comparator)) procedure?)
  (tags pure)
  (subsigs (return (lambda (obj1 obj2) boolean?))))
 ((name . comparator-ordering-predicate)
  (signature lambda ((comparator? comparator)) (or #f procedure?))
  (tags pure)
  (subsigs (return (lambda (obj1 obj2) boolean?))))
 ((name . comparator-hash-function)
  (signature lambda ((comparator? comparator)) (or #f procedure?))
  (tags pure)
  (subsigs (return (lambda (obj) integer?))))
 ((name . comparator-test-type)
  (signature lambda ((comparator? comparator) obj) boolean?)
  (tags pure))
 ((name . comparator-check-type)
  (signature lambda ((comparator? comparator) obj) boolean?))
 ((name . comparator-hash)
  (signature lambda ((comparator? comparator) obj) integer?)
  (tags pure))
 ((name . =?)
  (signature
   lambda
   ((comparator? comparator) object1 object2 object3 ...)
   boolean?)
  (tags pure))
 ((name . <?)
  (signature
   lambda
   ((comparator? comparator) object1 object2 object3 ...)
   boolean?)
  (tags pure))
 ((name . >?)
  (signature
   lambda
   ((comparator? comparator) object1 object2 object3 ...)
   boolean?)
  (tags pure))
 ((name . <=?)
  (signature
   lambda
   ((comparator? comparator) object1 object2 object3 ...)
   boolean?)
  (tags pure))
 ((name . >=?)
  (signature
   lambda
   ((comparator? comparator) object1 object2 object3 ...)
   boolean?)
  (tags pure))
 ((name . comparator-if<=>)
  (signature
   syntax-rules
   ()
   ((_ comparator object1 object2 less-than equal-to greater-than))
   ((_ object1 object2 less-than equal-to greater-than)))
  (syntax-param-signatures (comparator comparator?))))
