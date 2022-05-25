(
 ;; procedures before break get copied to (scheme vector base)
 ((name . make-@vector)
  (signature lambda ((integer? size)) @vector?))
 ((name . make-@vector)
  (signature lambda ((integer? size) (@? size)) @vector?)
  (tags pure))
 ((name . @vector)
  (signature lambda ((@? value) ...) @vector?)
  (tags pure))
 ((name . @?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (supertypes @?-SUPERTYPE))
 ((name . @vector?)
  (signature lambda (obj) boolean?)
  (tags pure predicate))
 ((name . @vector-ref)
  (signature lambda ((@vector? vec) (integer? i)) @?)
  (tags pure))
 ((name . @vector-length)
  (signature lambda ((@vector? vec)) integer?)
  (tags pure))
 ((name . @vector-set!)
  (signature lambda ((@vector? vec) (integer? i) (@? value)) undefined))
 ((name . @vector->list)
  (signature lambda ((@vector? vec)) list?)
  (tags pure))
 ((name . @vector->list)
  (signature lambda ((@vector? vec) (integer? start)) list?)
  (tags pure))
 ((name . @vector->list)
  (signature lambda ((@vector? vec) (integer? start) (integer? end)) list?)
  (tags pure))
 ((name . list->@vector)
  (signature lambda ((list? proper-list)) @vector?)
  (tags pure))

 ((name . @vector-unfold)
  (signature lambda ((procedure? f) (integer? length) seed) @vector?)
  (subsigs
    (f (lambda ((integer? index) state) (values @? *))))
  (tags pure))
 ((name . @vector-unfold)
  (signature lambda ((procedure? f) (integer? length) seed) @vector?)
  (subsigs
    (f (lambda ((integer? index) state) (values @? *))))
  (tags pure))
 ((name . @vector-copy)
  (signature lambda ((@vector? vec)) @vector?)
  (tags pure))
 ((name . @vector-copy)
  (signature lambda ((@vector? vec) (integer? start)) @vector?)
  (tags pure))
 ((name . @vector-copy)
  (signature lambda ((@vector? vec) (integer? start) (integer? end)) @vector?)
  (tags pure))
 ((name . @vector-reverse-copy)
  (signature lambda ((@vector? vec)) @vector?)
  (tags pure))
 ((name . @vector-reverse-copy)
  (signature lambda ((@vector? vec) (integer? start)) @vector?)
  (tags pure))
 ((name . @vector-reverse-copy)
  (signature lambda ((@vector? vec) (integer? start) (integer? end)) @vector?)
  (tags pure))
 ((name . @vector-append)
  (signature lambda ((@vector? vec) ...) @vector?)
  (tags pure))
 ((name . @vector-concatenate)
  (signature lambda ((list? list-of-@vectors)) @vector?)
  (tags pure))
 ((name . @vector-append-subvectors)
  (signature lambda ((@vector? vec1) (integer? start1) (integer? start2) ...) @vector?)
  (tags pure))
 ((name . @vector-empty?)
  (signature lambda ((@vector? vec)) boolean?)
  (tags pure))
 ((name . @vector=)
  (signature lambda ((@vector? vec) ...) boolean?)
  (tags pure))
 ((name . @vector-take)
  (signature lambda ((@vector? vec) (integer? n)) @vector?)
  (tags pure))
 ((name . @vector-take-right)
  (signature lambda ((@vector? vec) (integer? n)) @vector?)
  (tags pure))
 ((name . @vector-drop)
  (signature lambda ((@vector? vec) (integer? n)) @vector?)
  (tags pure))
 ((name . @vector-drop-right)
  (signature lambda ((@vector? vec) (integer? n)) @vector?)
  (tags pure))
 ((name . @vector-segment)
  (signature lambda ((@vector? vec) (integer? n)) list?)
  (tags pure))
 ((name . @vector-fold)
  (signature
   lambda
   ((procedure? kons) knil (@vector? vec1) (@vector? vec2) ...)
   *)
  (tags pure)
  (subsigs (kons (lambda (state obj1 obj2 ...) *))))
 ((name . @vector-fold-right)
  (signature
   lambda
   ((procedure? kons) knil (@vector? vec1) (@vector? vec2) ...)
   *)
  (tags pure)
  (subsigs (kons (lambda (state obj1 obj2 ...) *))))
 ((name . @vector-map)
  (signature
   lambda
   ((procedure? proc) (@vector? vector1) (@vector? vector2) ...)
   vector?)
  (tags pure)
  (subsigs (proc (lambda (obj ...) *))))
 ((name . @vector-map!)
  (signature
   lambda
   ((procedure? proc) (@vector? vector1) (@vector? vector2) ...)
   undefined)
  (subsigs (proc (lambda (obj ...) *))))
 ((name . @vector-for-each)
  (signature
   lambda
   ((procedure? proc) (@vector? vector1) (@vector? vector2) ...)
   undefined)
  (subsigs (proc (lambda (obj ...) undefined))))
 ((name . @vector-count)
  (signature
   lambda
   ((procedure? pred?) (@vector? vec1) (@vector? vec2) ...)
   integer?)
  (tags pure)
  (subsigs (pred? (lambda (obj1 obj2 ...) *))))
 ((name . @vector-cumulate)
  (signature lambda ((procedure? f) knil (@vector? vec)) @vector?)
  (tags pure)
  (subsigs (f (lambda (obj1 obj2) *))))
 ((name . @vector-take-while)
  (signature lambda ((procedure? pred?) (@vector? vec)) @vector?)
  (tags pure)
  (subsigs (pred? (lambda (obj) boolean?))))
 ((name . @vector-take-while-right)
  (signature lambda ((procedure? pred?) (@vector? vec)) @vector?)
  (tags pure)
  (subsigs (pred? (lambda (obj) boolean?))))
 ((name . @vector-drop-while)
  (signature lambda ((procedure? pred?) (@vector? vec)) @vector?)
  (tags pure)
  (subsigs (pred? (lambda (obj) boolean?))))
 ((name . @vector-drop-while-right)
  (signature lambda ((procedure? pred?) (@vector? vec)) @vector?)
  (tags pure)
  (subsigs (pred? (lambda (obj) boolean?))))
 ((name . @vector-index)
  (signature
   lambda
   ((procedure? pred?) (@vector? vec1) (@vector? vec2) ...)
   (or integer? #f))
  (tags pure)
  (subsigs (pred? (lambda (obj1 obj2 ...) *))))
 ((name . @vector-index-right)
  (signature
   lambda
   ((procedure? pred?) (@vector? vec1) (@vector? vec2) ...)
   (or integer? #f))
  (tags pure)
  (subsigs (pred? (lambda (obj1 obj2 ...) *))))
 ((name . @vector-skip)
  (signature
   lambda
   ((procedure? pred?) (@vector? vec1) (@vector? vec2) ...)
   (or integer? #f))
  (tags pure)
  (subsigs (pred? (lambda (obj1 obj2 ...) *))))
 ((name . @vector-skip-right)
  (signature
   lambda
   ((procedure? pred?) (@vector? vec1) (@vector? vec2) ...)
   (or integer? #f))
  (tags pure)
  (subsigs (pred? (lambda (obj1 obj2 ...) *))))
 ((name . @vector-any)
  (signature lambda ((procedure? pred?) (@vector? vec1) (@vector? vec2) ...) *)
  (tags pure)
  (subsigs (pred? (lambda (obj1 obj2 ...) *))))
 ((name . @vector-every)
  (signature lambda ((procedure? pred?) (@vector? vec1) (@vector? vec2) ...) *)
  (tags pure)
  (subsigs (pred? (lambda (obj1 obj2 ...) *))))
 ((name . @vector-partition)
  (signature
   lambda
   ((procedure? pred?) (@vector? vec))
   (values @vector? integer?))
  (tags pure)
  (subsigs (pred? (lambda (obj) boolean?))))
 ((name . @vector-filter)
  (signature lambda ((procedure? pred?) (@vector? vec1)) @vector?)
  (tags pure)
  (subsigs (pred? (lambda (obj) boolean?))))
 ((name . @vector-remove)
  (signature lambda ((procedure? pred?) (@vector? vec1)) @vector?)
  (tags pure)
  (subsigs (pred? (lambda (obj) boolean?))))
 ((name . @vector-swap!)
  (signature lambda ((@vector? @vector) (integer? i) (integer? j)) undefined))
 ((name . @vector-fill!) (signature lambda ((@vector? @vector) (@? fill)) undefined))
 ((name . @vector-fill!)
  (signature lambda ((@vector? @vector) (@? fill) (integer? start)) undefined))
 ((name . @vector-fill!)
  (signature
   lambda
   ((@vector? @vector) (@? fill) (integer? start) (integer? end))
   undefined))
 ((name . @vector-reverse!) (signature lambda ((@vector? @vector)) undefined))
 ((name . @vector-reverse!)
  (signature lambda ((@vector? @vector) (integer? start)) undefined))
 ((name . @vector-reverse!)
  (signature
   lambda
   ((@vector? @vector) (integer? start) (integer? end))
   undefined))
 ((name . @vector-copy!)
  (signature lambda ((@vector? to) (integer? at) (@vector? from)) undefined))
 ((name . @vector-copy!)
  (signature
   lambda
   ((@vector? to) (integer? at) (@vector? from) (integer? start))
   undefined))
 ((name . @vector-copy!)
  (signature
   lambda
   ((@vector? to) (integer? at) (@vector? from) (integer? start) (integer? end))
   undefined))
 ((name . @vector-reverse-copy!)
  (signature lambda ((@vector? to) (integer? at) (@vector? from)) undefined))
 ((name . @vector-reverse-copy!)
  (signature
   lambda
   ((@vector? to) (integer? at) (@vector? from) (integer? start))
   undefined))
 ((name . @vector-reverse-copy!)
  (signature
   lambda
   ((@vector? to) (integer? at) (@vector? from) (integer? start) (integer? end))
   undefined))
 ((name . @vector-unfold!)
  (signature
   lambda
   ((procedure? f)
    (@vector? vec)
    (integer? start)
    (integer? end)
    initial-seed
    ...)
   undefined)
  (subsigs (f (lambda ((integer? index) seed ...) (values * * ...)))))
 ((name . @vector-unfold-right!)
  (signature
   lambda
   ((procedure? f)
    (@vector? vec)
    (integer? start)
    (integer? end)
    initial-seed
    ...)
   undefined)
  (subsigs (f (lambda ((integer? index) seed ...) (values * * ...)))))
 ((name . reverse-@vector->list)
  (signature lambda ((@vector? vec)) list?)
  (tags pure))
 ((name . reverse-@vector->list)
  (signature lambda ((@vector? vec) (integer? start)) list?)
  (tags pure))
 ((name . reverse-@vector->list)
  (signature lambda ((@vector? vec) (integer? start) (integer? end)) list?)
  (tags pure))
 ((name . reverse-list->@vector)
  (signature lambda ((list? proper-list)) @vector?)
  (tags pure))
 ((name . @vector->vector)
  (signature lambda ((@vector? vec)) vector?)
  (tags pure))
 ((name . @vector->vector)
  (signature lambda ((@vector? vec) (integer? start)) vector?)
  (tags pure))
 ((name . @vector->vector)
  (signature lambda ((@vector? vec) (integer? start) (integer? end)) vector?)
  (tags pure))
 ((name . vector->@vector)
  (signature lambda ((vector? vec)) @vector?)
  (tags pure))
 ((name . vector->@vector)
  (signature lambda ((vector? vec) (integer? start)) @vector?)
  (tags pure))
 ((name . vector->@vector)
  (signature lambda ((vector? vec) (integer? start) (integer? end)) @vector?)
  (tags pure))
 ((name . make-@vector-generator)
  (signature lambda ((@vector? vec)) procedure?)
  (subsigs
    (return (lambda () (or eof-object? @?)))))
 ((name . @vector-comparator)
  (signature value comparator?))
 ((name . write-@vector)
  (signature lambda ((@vector vec)) undefined)
  (tags parameterized))
 ((name . write-@vector)
  (signature lambda ((@vector vec) (output-port? port)) undefined)))