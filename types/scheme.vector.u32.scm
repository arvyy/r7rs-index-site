(
 ;; procedures before break get copied to (scheme vector base)
 ((name . make-u32vector)
  (signature lambda ((integer? size)) u32vector?))
 ((name . make-u32vector)
  (signature lambda ((integer? size) (u32? size)) u32vector?)
  (tags pure))
 ((name . u32vector)
  (signature lambda ((u32? value) ...) u32vector?)
  (tags pure))
 ((name . u32?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (supertypes integer?))
 ((name . u32vector?)
  (signature lambda (obj) boolean?)
  (tags pure predicate))
 ((name . u32vector-ref)
  (signature lambda ((u32vector? vec) (integer? i)) u32?)
  (tags pure))
 ((name . u32vector-length)
  (signature lambda ((u32vector? vec)) integer?)
  (tags pure))
 ((name . u32vector-set!)
  (signature lambda ((u32vector? vec) (integer? i) (u32? value)) undefined))
 ((name . u32vector->list)
  (signature lambda ((u32vector? vec)) list?)
  (tags pure))
 ((name . u32vector->list)
  (signature lambda ((u32vector? vec) (integer? start)) list?)
  (tags pure))
 ((name . u32vector->list)
  (signature lambda ((u32vector? vec) (integer? start) (integer? end)) list?)
  (tags pure))
 ((name . list->u32vector)
  (signature lambda ((list? proper-list)) u32vector?)
  (tags pure))

 ((name . u32vector-unfold)
  (signature lambda ((procedure? f) (integer? length) seed) u32vector?)
  (subsigs
    (f (lambda ((integer? index) state) (values u32? *))))
  (tags pure))
 ((name . u32vector-unfold)
  (signature lambda ((procedure? f) (integer? length) seed) u32vector?)
  (subsigs
    (f (lambda ((integer? index) state) (values u32? *))))
  (tags pure))
 ((name . u32vector-copy)
  (signature lambda ((u32vector? vec)) u32vector?)
  (tags pure))
 ((name . u32vector-copy)
  (signature lambda ((u32vector? vec) (integer? start)) u32vector?)
  (tags pure))
 ((name . u32vector-copy)
  (signature lambda ((u32vector? vec) (integer? start) (integer? end)) u32vector?)
  (tags pure))
 ((name . u32vector-reverse-copy)
  (signature lambda ((u32vector? vec)) u32vector?)
  (tags pure))
 ((name . u32vector-reverse-copy)
  (signature lambda ((u32vector? vec) (integer? start)) u32vector?)
  (tags pure))
 ((name . u32vector-reverse-copy)
  (signature lambda ((u32vector? vec) (integer? start) (integer? end)) u32vector?)
  (tags pure))
 ((name . u32vector-append)
  (signature lambda ((u32vector? vec) ...) u32vector?)
  (tags pure))
 ((name . u32vector-concatenate)
  (signature lambda ((list? list-of-u32vectors)) u32vector?)
  (tags pure))
 ((name . u32vector-append-subvectors)
  (signature lambda ((u32vector? vec1) (integer? start1) (integer? start2) ...) u32vector?)
  (tags pure))
 ((name . u32vector-empty?)
  (signature lambda ((u32vector? vec)) boolean?)
  (tags pure))
 ((name . u32vector=)
  (signature lambda ((u32vector? vec) ...) boolean?)
  (tags pure))
 ((name . u32vector-take)
  (signature lambda ((u32vector? vec) (integer? n)) u32vector?)
  (tags pure))
 ((name . u32vector-take-right)
  (signature lambda ((u32vector? vec) (integer? n)) u32vector?)
  (tags pure))
 ((name . u32vector-drop)
  (signature lambda ((u32vector? vec) (integer? n)) u32vector?)
  (tags pure))
 ((name . u32vector-drop-right)
  (signature lambda ((u32vector? vec) (integer? n)) u32vector?)
  (tags pure))
 ((name . u32vector-segment)
  (signature lambda ((u32vector? vec) (integer? n)) list?)
  (tags pure))
 ((name . u32vector-fold)
  (signature
   lambda
   ((procedure? kons) knil (u32vector? vec1) (u32vector? vec2) ...)
   *)
  (tags pure)
  (subsigs (kons (lambda (state obj1 obj2 ...) *))))
 ((name . u32vector-fold-right)
  (signature
   lambda
   ((procedure? kons) knil (u32vector? vec1) (u32vector? vec2) ...)
   *)
  (tags pure)
  (subsigs (kons (lambda (state obj1 obj2 ...) *))))
 ((name . u32vector-map)
  (signature
   lambda
   ((procedure? proc) (u32vector? vector1) (u32vector? vector2) ...)
   vector?)
  (tags pure)
  (subsigs (proc (lambda (obj ...) *))))
 ((name . u32vector-map!)
  (signature
   lambda
   ((procedure? proc) (u32vector? vector1) (u32vector? vector2) ...)
   undefined)
  (subsigs (proc (lambda (obj ...) *))))
 ((name . u32vector-for-each)
  (signature
   lambda
   ((procedure? proc) (u32vector? vector1) (u32vector? vector2) ...)
   undefined)
  (subsigs (proc (lambda (obj ...) undefined))))
 ((name . u32vector-count)
  (signature
   lambda
   ((procedure? pred?) (u32vector? vec1) (u32vector? vec2) ...)
   integer?)
  (tags pure)
  (subsigs (pred? (lambda (obj1 obj2 ...) *))))
 ((name . u32vector-cumulate)
  (signature lambda ((procedure? f) knil (u32vector? vec)) u32vector?)
  (tags pure)
  (subsigs (f (lambda (obj1 obj2) *))))
 ((name . u32vector-take-while)
  (signature lambda ((procedure? pred?) (u32vector? vec)) u32vector?)
  (tags pure)
  (subsigs (pred? (lambda (obj) boolean?))))
 ((name . u32vector-take-while-right)
  (signature lambda ((procedure? pred?) (u32vector? vec)) u32vector?)
  (tags pure)
  (subsigs (pred? (lambda (obj) boolean?))))
 ((name . u32vector-drop-while)
  (signature lambda ((procedure? pred?) (u32vector? vec)) u32vector?)
  (tags pure)
  (subsigs (pred? (lambda (obj) boolean?))))
 ((name . u32vector-drop-while-right)
  (signature lambda ((procedure? pred?) (u32vector? vec)) u32vector?)
  (tags pure)
  (subsigs (pred? (lambda (obj) boolean?))))
 ((name . u32vector-index)
  (signature
   lambda
   ((procedure? pred?) (u32vector? vec1) (u32vector? vec2) ...)
   (or integer? #f))
  (tags pure)
  (subsigs (pred? (lambda (obj1 obj2 ...) *))))
 ((name . u32vector-index-right)
  (signature
   lambda
   ((procedure? pred?) (u32vector? vec1) (u32vector? vec2) ...)
   (or integer? #f))
  (tags pure)
  (subsigs (pred? (lambda (obj1 obj2 ...) *))))
 ((name . u32vector-skip)
  (signature
   lambda
   ((procedure? pred?) (u32vector? vec1) (u32vector? vec2) ...)
   (or integer? #f))
  (tags pure)
  (subsigs (pred? (lambda (obj1 obj2 ...) *))))
 ((name . u32vector-skip-right)
  (signature
   lambda
   ((procedure? pred?) (u32vector? vec1) (u32vector? vec2) ...)
   (or integer? #f))
  (tags pure)
  (subsigs (pred? (lambda (obj1 obj2 ...) *))))
 ((name . u32vector-any)
  (signature lambda ((procedure? pred?) (u32vector? vec1) (u32vector? vec2) ...) *)
  (tags pure)
  (subsigs (pred? (lambda (obj1 obj2 ...) *))))
 ((name . u32vector-every)
  (signature lambda ((procedure? pred?) (u32vector? vec1) (u32vector? vec2) ...) *)
  (tags pure)
  (subsigs (pred? (lambda (obj1 obj2 ...) *))))
 ((name . u32vector-partition)
  (signature
   lambda
   ((procedure? pred?) (u32vector? vec))
   (values u32vector? integer?))
  (tags pure)
  (subsigs (pred? (lambda (obj) boolean?))))
 ((name . u32vector-filter)
  (signature lambda ((procedure? pred?) (u32vector? vec1)) u32vector?)
  (tags pure)
  (subsigs (pred? (lambda (obj) boolean?))))
 ((name . u32vector-remove)
  (signature lambda ((procedure? pred?) (u32vector? vec1)) u32vector?)
  (tags pure)
  (subsigs (pred? (lambda (obj) boolean?))))
 ((name . u32vector-swap!)
  (signature lambda ((u32vector? u32vector) (integer? i) (integer? j)) undefined))
 ((name . u32vector-fill!) (signature lambda ((u32vector? u32vector) (u32? fill)) undefined))
 ((name . u32vector-fill!)
  (signature lambda ((u32vector? u32vector) (u32? fill) (integer? start)) undefined))
 ((name . u32vector-fill!)
  (signature
   lambda
   ((u32vector? u32vector) (u32? fill) (integer? start) (integer? end))
   undefined))
 ((name . u32vector-reverse!) (signature lambda ((u32vector? u32vector)) undefined))
 ((name . u32vector-reverse!)
  (signature lambda ((u32vector? u32vector) (integer? start)) undefined))
 ((name . u32vector-reverse!)
  (signature
   lambda
   ((u32vector? u32vector) (integer? start) (integer? end))
   undefined))
 ((name . u32vector-copy!)
  (signature lambda ((u32vector? to) (integer? at) (u32vector? from)) undefined))
 ((name . u32vector-copy!)
  (signature
   lambda
   ((u32vector? to) (integer? at) (u32vector? from) (integer? start))
   undefined))
 ((name . u32vector-copy!)
  (signature
   lambda
   ((u32vector? to) (integer? at) (u32vector? from) (integer? start) (integer? end))
   undefined))
 ((name . u32vector-reverse-copy!)
  (signature lambda ((u32vector? to) (integer? at) (u32vector? from)) undefined))
 ((name . u32vector-reverse-copy!)
  (signature
   lambda
   ((u32vector? to) (integer? at) (u32vector? from) (integer? start))
   undefined))
 ((name . u32vector-reverse-copy!)
  (signature
   lambda
   ((u32vector? to) (integer? at) (u32vector? from) (integer? start) (integer? end))
   undefined))
 ((name . u32vector-unfold!)
  (signature
   lambda
   ((procedure? f)
    (u32vector? vec)
    (integer? start)
    (integer? end)
    initial-seed
    ...)
   undefined)
  (subsigs (f (lambda ((integer? index) seed ...) (values * * ...)))))
 ((name . u32vector-unfold-right!)
  (signature
   lambda
   ((procedure? f)
    (u32vector? vec)
    (integer? start)
    (integer? end)
    initial-seed
    ...)
   undefined)
  (subsigs (f (lambda ((integer? index) seed ...) (values * * ...)))))
 ((name . reverse-u32vector->list)
  (signature lambda ((u32vector? vec)) list?)
  (tags pure))
 ((name . reverse-u32vector->list)
  (signature lambda ((u32vector? vec) (integer? start)) list?)
  (tags pure))
 ((name . reverse-u32vector->list)
  (signature lambda ((u32vector? vec) (integer? start) (integer? end)) list?)
  (tags pure))
 ((name . reverse-list->u32vector)
  (signature lambda ((list? proper-list)) u32vector?)
  (tags pure))
 ((name . u32vector->vector)
  (signature lambda ((u32vector? vec)) vector?)
  (tags pure))
 ((name . u32vector->vector)
  (signature lambda ((u32vector? vec) (integer? start)) vector?)
  (tags pure))
 ((name . u32vector->vector)
  (signature lambda ((u32vector? vec) (integer? start) (integer? end)) vector?)
  (tags pure))
 ((name . vector->u32vector)
  (signature lambda ((vector? vec)) u32vector?)
  (tags pure))
 ((name . vector->u32vector)
  (signature lambda ((vector? vec) (integer? start)) u32vector?)
  (tags pure))
 ((name . vector->u32vector)
  (signature lambda ((vector? vec) (integer? start) (integer? end)) u32vector?)
  (tags pure))
 ((name . make-u32vector-generator)
  (signature lambda ((u32vector? vec)) procedure?)
  (subsigs
    (return (lambda () (or eof-object? u32?)))))
 ((name . u32vector-comparator)
  (signature value comparator?))
 ((name . write-u32vector)
  (signature lambda ((u32vector vec)) undefined)
  (parameterized-by "(scheme base) current-output-port"))
 ((name . write-u32vector)
  (signature lambda ((u32vector vec) (output-port? port)) undefined)))
