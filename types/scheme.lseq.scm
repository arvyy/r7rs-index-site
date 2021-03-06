(((name . generator->lseq)
  (signature lambda ((procedure? generator)) lseq?)
  (subsigs (generator (lambda () *))))
 ((name . lseq?)
  (signature lambda (x) boolean?)
  (tags pure predicate)
  (subsigs)
  (supertypes list? dotted-list?))
 ((name . lseq=?)
  (signature lambda ((procedure? elt=?) (lseq? lseq1) (lseq? lseq2)) boolean?)
  (tags pure)
  (subsigs (elt=? (lambda (a b) boolean?))))
 ((name . lseq-car) (signature lambda ((lseq? lseq)) *) (tags pure))
 ((name . lseq-first) (signature lambda ((lseq? lseq)) *) (tags pure))
 ((name . lseq-cdr) (signature lambda ((lseq? lseq)) lseq?) (tags pure))
 ((name . lseq-rest) (signature lambda ((lseq? lseq)) lseq?) (tags pure))
 ((name . lseq-ref)
  (signature lambda ((lseq? lseq) (integer? i)) *)
  (tags pure))
 ((name . lseq-take)
  (signature lambda ((lseq? lseq) (integer? i)) lseq?)
  (tags pure))
 ((name . lseq-drop)
  (signature lambda ((lseq? lseq) (integer? i)) lseq?)
  (tags pure))
 ((name . lseq-realize) (signature lambda ((lseq? lseq)) list?) (tags pure))
 ((name . lseq->generator)
  (signature lambda ((lseq? lseq)) procedure?)
  (subsigs (return (lambda () *))))
 ((name . lseq-length) (signature lambda ((lseq? lseq)) integer?) (tags pure))
 ((name . lseq-append) (signature lambda ((lseq? lseq) ...) lseq?) (tags pure))
 ((name . lseq-zip)
  (signature lambda ((lseq? lseq1) (lseq? lseq2) ...) lseq?)
  (tags pure))
 ((name . lseq-map)
  (signature lambda ((procedure? proc) (lseq? lseq1) (lseq? lseq2) ...) lseq?)
  (tags pure)
  (subsigs (proc (lambda (value1 value2 ...) *))))
 ((name . lseq-for-each)
  (signature lambda ((procedure? proc) (lseq? lseq1) (lseq? lseq2) ...) *)
  (subsigs (proc (lambda (value1 value2 ...) *))))
 ((name . lseq-filter)
  (signature lambda ((procedure? pred) (lseq? lseq)) lseq?)
  (tags pure)
  (subsigs (pred (lambda (element) boolean?))))
 ((name . lseq-remove)
  (signature lambda ((procedure? pred) (lseq? lseq)) lseq?)
  (tags pure)
  (subsigs (pred (lambda (element) boolean?))))
 ((name . lseq-find)
  (signature lambda ((procedure? pred) (lseq? lseq)) *)
  (tags pure)
  (subsigs (pred (lambda (element) boolean?))))
 ((name . lseq-find-tail)
  (signature lambda ((procedure? pred) (lseq? lseq)) (or #f lseq?))
  (tags pure)
  (subsigs (pred (lambda (element) boolean?))))
 ((name . lseq-take-while)
  (signature lambda ((procedure? pred) (lseq? lseq)) lseq?)
  (tags pure)
  (subsigs (pred (lambda (element) boolean?))))
 ((name . lseq-drop-while)
  (signature lambda ((procedure? pred) (lseq? lseq)) lseq?)
  (tags pure)
  (subsigs (pred (lambda (element) boolean?))))
 ((name . lseq-any)
  (signature lambda ((procedure? pred) (lseq? lseq1) (lseq? lseq2) ...) *)
  (tags pure)
  (subsigs (pred (lambda (element) *))))
 ((name . lseq-every)
  (signature lambda ((procedure? pred) (lseq? lseq1) (lseq? lseq2) ...) *)
  (tags pure)
  (subsigs (pred (lambda (element) *))))
 ((name . lseq-index)
  (signature
   lambda
   ((procedure? pred) (lseq? lseq1) (lseq? lseq2) ...)
   (or integer? #f))
  (tags pure)
  (subsigs (pred (lambda (element) *))))
 ((name . lseq-member)
  (signature lambda (x (lseq? lseq)) (or #f lseq?))
  (tags pure))
 ((name . lseq-member)
  (signature lambda (x (lseq? lseq) (procedure? =)) (or #f lseq?))
  (tags pure)
  (subsigs (= (lambda (a b) boolean?))))
 ((name . lseq-memq)
  (signature lambda (x (lseq? lseq)) (or #f lseq?))
  (tags pure))
 ((name . lseq-memv)
  (signature lambda (x (lseq? lseq)) (or #f lseq?))
  (tags pure)))
