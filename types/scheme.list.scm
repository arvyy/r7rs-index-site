(((name . cons) (signature lambda (a d) pair?) (tags pure))
 ((name . list) (signature lambda (object ...) list?) (tags pure))
 ((name . xcons) (signature lambda (d a) pair?) (tags pure))
 ((name . cons*) (signature lambda (elt1 elt2 ...) *))
 ((name . make-list) (signature lambda ((integer? n)) list?))
 ((name . make-list) (signature lambda ((integer? n) fill) list?) (tags pure))
 ((name . list-tabulate)
  (signature lambda ((integer? n) (procedure? init-proc)) list?)
  (tags pure)
  (subsigs (init-proc (lambda ((integer? i)) *))))
 ((name . list-copy) (signature lambda ((list? flist)) list?) (tags pure))
 ((name . list-copy)
  (signature lambda ((dotted-list? flist)) dotted-list?)
  (tags pure))
 ((name . circular-list)
  (signature lambda (elt1 elt2 ...) circular-list?)
  (tags pure))
 ((name . iota) (signature lambda ((integer? count)) list?) (tags pure))
 ((name . iota)
  (signature lambda ((integer? count) (number? start)) list?)
  (tags pure))
 ((name . iota)
  (signature lambda ((integer? count) (number? start) (number? step)) list?)
  (tags pure))
 ((name . proper-list?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (subsigs))
 ((name . circular-list?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (subsigs)
  (supertypes pair?))
 ((name . dotted-list?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (subsigs)
  (supertypes pair?))
 ((name . pair?) (signature lambda (obj) boolean?) (tags pure predicate))
 ((name . null?) (signature lambda (obj) boolean?) (tags pure predicate))
 ((name . null-list?)
  (signature lambda ((list? lst)) boolean?)
  (tags pure predicate))
 ((name . null-list?)
  (signature lambda ((circular-list? lst)) boolean?)
  (tags pure predicate))
 ((name . not-pair?) (signature lambda (obj) boolean?) (tags pure predicate))
 ((name . list=)
  (signature lambda ((procedure? elt=) (list? list1) ...) boolean?)
  (tags pure)
  (subsigs (elt= (lambda (a b) *))))
 ((name . caar) (signature lambda ((pair? pair)) *) (tags pure))
 ((name . cadr) (signature lambda ((pair? pair)) *) (tags pure))
 ((name . car) (signature lambda ((pair? pair)) *) (tags pure))
 ((name . cdar) (signature lambda ((pair? pair)) *) (tags pure))
 ((name . cddr) (signature lambda ((pair? pair)) *) (tags pure))
 ((name . cdr) (signature lambda ((pair? pair)) *) (tags pure))
 ((name . caaaar) (signature lambda ((pair? pair)) *) (tags pure))
 ((name . caaadr) (signature lambda ((pair? pair)) *) (tags pure))
 ((name . caaar) (signature lambda ((pair? pair)) *) (tags pure))
 ((name . caadar) (signature lambda ((pair? pair)) *) (tags pure))
 ((name . caaddr) (signature lambda ((pair? pair)) *) (tags pure))
 ((name . caadr) (signature lambda ((pair? pair)) *) (tags pure))
 ((name . cadaar) (signature lambda ((pair? pair)) *) (tags pure))
 ((name . cadadr) (signature lambda ((pair? pair)) *) (tags pure))
 ((name . cadar) (signature lambda ((pair? pair)) *) (tags pure))
 ((name . caddar) (signature lambda ((pair? pair)) *) (tags pure))
 ((name . cadddr) (signature lambda ((pair? pair)) *) (tags pure))
 ((name . caddr) (signature lambda ((pair? pair)) *) (tags pure))
 ((name . cdaaar) (signature lambda ((pair? pair)) *) (tags pure))
 ((name . cdaadr) (signature lambda ((pair? pair)) *) (tags pure))
 ((name . cdaar) (signature lambda ((pair? pair)) *) (tags pure))
 ((name . cdadar) (signature lambda ((pair? pair)) *) (tags pure))
 ((name . cdaddr) (signature lambda ((pair? pair)) *) (tags pure))
 ((name . cdadr) (signature lambda ((pair? pair)) *) (tags pure))
 ((name . cddaar) (signature lambda ((pair? pair)) *) (tags pure))
 ((name . cddadr) (signature lambda ((pair? pair)) *) (tags pure))
 ((name . cddar) (signature lambda ((pair? pair)) *) (tags pure))
 ((name . cdddar) (signature lambda ((pair? pair)) *) (tags pure))
 ((name . cddddr) (signature lambda ((pair? pair)) *) (tags pure))
 ((name . cdddr) (signature lambda ((pair? pair)) *) (tags pure))
 ((name . list-ref)
  (signature lambda ((list? clist) (integer? i)) *)
  (tags pure))
 ((name . list-ref)
  (signature lambda ((circular-list? clist) (integer? i)) *)
  (tags pure))
 ((name . first) (signature lambda ((pair? pair)) *) (tags pure))
 ((name . second) (signature lambda ((pair? pair)) *) (tags pure))
 ((name . third) (signature lambda ((pair? pair)) *) (tags pure))
 ((name . fourth) (signature lambda ((pair? pair)) *) (tags pure))
 ((name . fifth) (signature lambda ((pair? pair)) *) (tags pure))
 ((name . sixth) (signature lambda ((pair? pair)) *) (tags pure))
 ((name . seventh) (signature lambda ((pair? pair)) *) (tags pure))
 ((name . eighth) (signature lambda ((pair? pair)) *) (tags pure))
 ((name . ninth) (signature lambda ((pair? pair)) *) (tags pure))
 ((name . tenth) (signature lambda ((pair? pair)) *) (tags pure))
 ((name . car+cdr) (signature lambda ((pair? pair)) (values * *)) (tags pure))
 ((name . take) (signature lambda ((list? x) (integer? i)) list?) (tags pure))
 ((name . take)
  (signature lambda ((circular-list? x) (integer? i)) list?)
  (tags pure))
 ((name . take)
  (signature lambda ((dotted-list? x) (integer? i)) list?)
  (tags pure))
 ((name . drop) (signature lambda ((list? x) (integer? i)) list?) (tags pure))
 ((name . drop)
  (signature lambda ((circular-list? x) (integer? i)) circular-list?)
  (tags pure))
 ((name . drop)
  (signature lambda ((dotted-list? x) (integer? i)) *)
  (tags pure))
 ((name . take-right)
  (signature lambda ((list? flist) (integer? i)) list?)
  (tags pure))
 ((name . take-right)
  (signature lambda ((dotted-list? flist) (integer? i)) *)
  (tags pure))
 ((name . drop-right)
  (signature lambda ((list? flist) (integer? i)) list?)
  (tags pure))
 ((name . drop-right)
  (signature lambda ((dotted-list? flist) (integer? i)) list?)
  (tags pure))
 ((name . take!) (signature lambda ((list? x) (integer? i)) list?))
 ((name . take!) (signature lambda ((circular-list? x) (integer? i)) list?))
 ((name . take!) (signature lambda ((dotted-list? x) (integer? i)) list?))
 ((name . drop-right!) (signature lambda ((list? flist) (integer? i)) list?))
 ((name . drop-right!)
  (signature lambda ((dotted-list? flist) (integer? i)) list?))
 ((name . split-at)
  (signature lambda ((list? x) (integer? i)) (values list? list?))
  (tags pure))
 ((name . split-at)
  (signature
   lambda
   ((circular-list? x) (integer? i))
   (values list? circular-list?))
  (tags pure))
 ((name . split-at)
  (signature lambda ((dotted-list? x) (integer? i)) (values list? *))
  (tags pure))
 ((name . split-at!)
  (signature lambda ((list? x) (integer? i)) (values list? list?)))
 ((name . split-at!)
  (signature
   lambda
   ((circular-list? x) (integer? i))
   (values list? circular-list?)))
 ((name . split-at!)
  (signature lambda ((dotted-list? x) (integer? i)) (values list? *)))
 ((name . last) (signature lambda ((list? pair)) *) (tags pure))
 ((name . last-pair) (signature lambda ((list? pair)) pair?) (tags pure))
 ((name . length) (signature lambda ((list? list)) integer?) (tags pure))
 ((name . length+) (signature lambda ((list? clist)) integer?) (tags pure))
 ((name . length+)
  (signature lambda ((circular-list? clist)) boolean?)
  (tags pure))
 ((name . append) (signature lambda ((list? list) ...) list?) (tags pure))
 ((name . append) (signature lambda ((list? list) ... obj) *) (tags pure))
 ((name . append!) (signature lambda ((list? list) ...) list?))
 ((name . append!) (signature lambda ((list? list) ... obj) *))
 ((name . concatenate)
  (signature lambda ((list? list-of-lists)) *)
  (tags pure))
 ((name . concatenate!) (signature lambda ((list? list-of-lists)) *))
 ((name . reverse) (signature lambda ((list? list)) list?) (tags pure))
 ((name . reverse!) (signature lambda ((list? list)) list?))
 ((name . append-reverse)
  (signature lambda ((list? rev-head) (list? tail)) list?)
  (tags pure))
 ((name . append-reverse)
  (signature lambda ((list? rev-head) tail) *)
  (tags pure))
 ((name . append-reverse!)
  (signature lambda ((list? rev-head) (list? tail)) list?))
 ((name . append-reverse!) (signature lambda ((list? rev-head) tail) *))
 ((name . zip)
  (signature lambda ((list? clist1) (list? clist2) ...) list?)
  (tags pure))
 ((name . unzip1) (signature lambda ((list? list)) list?) (tags pure))
 ((name . unzip2)
  (signature lambda ((list? list)) (values list? list?))
  (tags pure))
 ((name . unzip3)
  (signature lambda ((list? list)) (values list? list? list?))
  (tags pure))
 ((name . unzip4)
  (signature lambda ((list? list)) (values list? list? list? list?))
  (tags pure))
 ((name . unzip5)
  (signature lambda ((list? list)) (values list? list? list? list? list?))
  (tags pure))
 ((name . count)
  (signature
   lambda
   ((procedure? pred) (list? clist1) (list? clist2) ...)
   integer?)
  (tags pure)
  (subsigs (pred (lambda (obj ...) *))))
 ((name . fold)
  (signature
   lambda
   ((procedure? kons) knil (list? clist1) (list? clist2) ...)
   *)
  (tags pure)
  (subsigs (kons (lambda (obj1 obj2 ... fold-state) *))))
 ((name . fold-right)
  (signature
   lambda
   ((procedure? kons) knil (list? clist1) (list? clist2) ...)
   *)
  (tags pure)
  (subsigs (kons (lambda (obj1 obj2 ... fold-state) *))))
 ((name . pair-fold)
  (signature
   lambda
   ((procedure? kons) knil (list? clist1) (list? clist2) ...)
   *)
  (tags pure)
  (subsigs (kons (lambda ((pair? pair1) (pair? pair2) ... fold-state) *))))
 ((name . pair-fold-right)
  (signature
   lambda
   ((procedure? kons) knil (list? clist1) (list? clist2) ...)
   *)
  (tags pure)
  (subsigs (kons (lambda ((pair? pair1) (pair? pair2) ... fold-state) *))))
 ((name . reduce)
  (signature lambda ((procedure? f) ridentity (list? list)) *)
  (tags pure)
  (subsigs (f (lambda (obj fold-state) *))))
 ((name . reduce-right)
  (signature lambda ((procedure? f) ridentity (list? list)) *)
  (tags pure)
  (subsigs (f (lambda (obj fold-state) *))))
 ((name . unfold)
  (signature lambda ((procedure? p) (procedure? f) (procedure? g) seed) list?)
  (tags pure)
  (subsigs
   (p (lambda (seed) boolean?))
   (f (lambda (seed) *))
   (g (lambda (seed) *))))
 ((name . unfold)
  (signature
   lambda
   ((procedure? p) (procedure? f) (procedure? g) seed (list? tail-gen))
   *)
  (tags pure)
  (subsigs
   (p (lambda (seed) boolean?))
   (f (lambda (seed) *))
   (g (lambda (seed) *))
   (tail-gen (lambda () *))))
 ((name . unfold-right)
  (signature lambda ((procedure? p) (procedure? f) (procedure? g) seed) list?)
  (tags pure)
  (subsigs
   (p (lambda (seed) boolean?))
   (f (lambda (seed) *))
   (g (lambda (seed) *))))
 ((name . unfold-right)
  (signature
   lambda
   ((procedure? p) (procedure? f) (procedure? g) seed (list? tail-gen))
   *)
  (tags pure)
  (subsigs
   (p (lambda (seed) boolean?))
   (f (lambda (seed) *))
   (g (lambda (seed) *))
   (tail-gen (lambda () *))))
 ((name . map)
  (signature lambda ((procedure? proc) (list? list1) (list? list2) ...) list?)
  (tags pure)
  (subsigs (proc (lambda (obj1 obj2 ...) *))))
 ((name . for-each)
  (signature
   lambda
   ((procedure? proc) (list? list1) (list? list2) ...)
   undefined)
  (subsigs (proc (lambda (obj1 obj2 ...) undefined))))
 ((name . append-map)
  (signature lambda ((procedure? proc) (list? list1) (list? list2) ...) list?)
  (tags pure)
  (subsigs (proc (lambda (obj1 obj2 ...) list?))))
 ((name . append-map!)
  (signature lambda ((procedure? proc) (list? list1) (list? list2) ...) list?)
  (subsigs (proc (lambda (obj1 objs2 ...) list?))))
 ((name . map!)
  (signature lambda ((procedure? proc) (list? list1) (list? list2) ...) list?)
  (subsigs (proc (lambda (obj1 obj2 ...) *))))
 ((name . map-in-order)
  (signature lambda ((procedure? proc) (list? list1) (list? list2) ...) list?)
  (subsigs (proc (lambda (obj1 obj2 ...) *))))
 ((name . pair-for-each)
  (signature
   lambda
   ((procedure? proc) (list? list1) (list? list2) ...)
   undefined)
  (subsigs (proc (lambda ((pair? obj1) (pair? obj2) ...) undefined))))
 ((name . filter-map)
  (signature lambda ((procedure? proc) (list? list1) (list? list2) ...) list?)
  (tags pure)
  (subsigs (proc (lambda (obj1 obj2 ...) *))))
 ((name . filter)
  (signature lambda ((procedure? pred) (list? list)) list?)
  (tags pure)
  (subsigs (pred (lambda (obj) *))))
 ((name . filter!)
  (signature lambda ((procedure? pred) (list? list)) list?)
  (subsigs (pred (lambda (obj) *))))
 ((name . partition)
  (signature lambda ((procedure? pred) (list? list)) (values list? list?))
  (tags pure)
  (subsigs (pred (lambda (obj) *))))
 ((name . partition!)
  (signature lambda ((procedure? pred) (list? list)) (values list? list?))
  (subsigs (pred (lambda (obj) *))))
 ((name . remove)
  (signature lambda ((procedure? pred) (list? list)) list?)
  (tags pure)
  (subsigs (pred (lambda (obj) *))))
 ((name . remove!)
  (signature lambda ((procedure? pred) (list? list)) list?)
  (subsigs (pred (lambda (obj) *))))
 ((name . find)
  (signature lambda ((procedure? pred) (list? list)) *)
  (tags pure)
  (subsigs (pred (lambda (obj) *))))
 ((name . find-tail)
  (signature lambda ((procedure? pred) (list? list)) (or pair? #f))
  (tags pure)
  (subsigs (pred (lambda (obj) *))))
 ((name . take-while)
  (signature lambda ((procedure? pred) (list? list)) list?)
  (tags pure)
  (subsigs (pred (lambda (obj) *))))
 ((name . take-while!)
  (signature lambda ((procedure? pred) (list? list)) list?)
  (subsigs (pred (lambda (obj) *))))
 ((name . drop-while)
  (signature lambda ((procedure? pred) (list? list)) list?)
  (tags pure)
  (subsigs (pred (lambda (obj) *))))
 ((name . drop-while)
  (signature lambda ((procedure? pred) (circular-list? list)) circular-list?)
  (tags pure)
  (subsigs (pred (lambda (obj) *))))
 ((name . span)
  (signature lambda ((procedure? pred) (list? list)) (values list? list?))
  (tags pure)
  (subsigs (pred (lambda (obj) *))))
 ((name . span)
  (signature
   lambda
   ((procedure? pred) (circular-list? list))
   (values list? circular-list?))
  (tags pure)
  (subsigs (pred (lambda (obj) *))))
 ((name . span!)
  (signature lambda ((procedure? pred) (list? list)) (values list? list?))
  (subsigs (pred (lambda (obj) *))))
 ((name . break)
  (signature lambda ((procedure? pred) (list? list)) (values list? list?))
  (tags pure)
  (subsigs (pred (lambda (obj) *))))
 ((name . break)
  (signature
   lambda
   ((procedure? pred) (circular-list? list))
   (values list? circular-list?))
  (tags pure)
  (subsigs (pred (lambda (obj) *))))
 ((name . break!)
  (signature lambda ((procedure? pred) (list? list)) (values list? list?))
  (subsigs (pred (lambda (obj) *))))
 ((name . any)
  (signature lambda ((procedure? pred) (list? clist1) (list? clist2) ...) *)
  (tags pure)
  (subsigs (pred (lambda (obj1 obj2 ...) *))))
 ((name . every)
  (signature lambda ((procedure? pred) (list? clist1) (list? clist2) ...) *)
  (tags pure)
  (subsigs (pred (lambda (obj1 obj2 ...) *))))
 ((name . list-index)
  (signature
   lambda
   ((procedure? pred) (list? clist1) (list? clist2) ...)
   (or integer? #f))
  (tags pure)
  (subsigs (pred (lambda (obj1 obj2 ...) *))))
 ((name . member)
  (signature lambda (obj (list? list)) (or #f list?))
  (tags pure))
 ((name . member)
  (signature lambda (obj (list? list) (procedure? =)) (or #f list?))
  (tags pure)
  (subsigs (= (lambda (obj1 obj2) *))))
 ((name . memq)
  (signature lambda (obj (list? list)) (or #f list?))
  (tags pure))
 ((name . memv)
  (signature lambda (obj (list? list)) (or #f list?))
  (tags pure))
 ((name . delete) (signature lambda (obj (list? list)) list?) (tags pure))
 ((name . delete)
  (signature lambda (obj (list? list) (procedure? =)) list?)
  (tags pure)
  (subsigs (= (lambda (obj1 obj2) *))))
 ((name . delete!) (signature lambda (obj (list? list)) list?))
 ((name . delete!)
  (signature lambda (obj (list? list) (procedure? =)) list?)
  (subsigs (= (lambda (obj1 obj2) *))))
 ((name . delete-duplicates)
  (signature lambda ((list? list)) list?)
  (tags pure))
 ((name . delete-duplicates)
  (signature lambda ((list? list) (procedure? =)) list?)
  (tags pure)
  (subsigs (= (lambda (obj1 obj2) *))))
 ((name . delete-duplicates!) (signature lambda ((list? list)) list?))
 ((name . delete-duplicates!)
  (signature lambda ((list? list) (procedure? =)) list?)
  (subsigs (= (lambda (obj1 obj2) *))))
 ((name . assoc)
  (signature lambda (obj (list? alist)) (or list? #f))
  (tags pure))
 ((name . assoc)
  (signature lambda (obj (list? alist) (procedure? =)) (or pair? #f))
  (tags pure)
  (subsigs (= (lambda (a b) *))))
 ((name . assq)
  (signature lambda (obj (list? alist)) (or pair? #f))
  (tags pure))
 ((name . assv)
  (signature lambda (obj (list? alist)) (or pair? #f))
  (tags pure))
 ((name . alist-cons)
  (signature lambda (key datum (list? alist)) list?)
  (tags pure))
 ((name . alist-copy) (signature lambda ((list? alist)) list?) (tags pure))
 ((name . alist-delete)
  (signature lambda (key (list? alist)) list?)
  (tags pure))
 ((name . alist-delete)
  (signature lambda (key (list? alist) (procedure? =)) list?)
  (tags pure)
  (subsigs (= (lambda (a b) *))))
 ((name . alist-delete!) (signature lambda (key (list? alist)) list?))
 ((name . alist-delete!)
  (signature lambda (key (list? alist) (procedure? =)) list?)
  (subsigs (= (lambda (a b) *))))
 ((name . lset<=)
  (signature lambda ((procedure? =) (list? list1) ...) boolean?)
  (tags pure)
  (subsigs (= (lambda (a b) *))))
 ((name . lset=)
  (signature lambda ((procedure? =) (list? list1) (list? list2) ...) boolean?)
  (tags pure)
  (subsigs (= (lambda (a b) *))))
 ((name . lset-adjoin)
  (signature lambda ((procedure? =) (list? list) elt1 ...) list?)
  (tags pure)
  (subsigs (= (lambda (a b) *))))
 ((name . lset-union)
  (signature lambda ((procedure? =) (list? list1) ...) list?)
  (tags pure)
  (subsigs (= (lambda (a b) *))))
 ((name . lset-union!)
  (signature lambda ((procedure? =) (list? list1) ...) list?)
  (subsigs (= (lambda (a b) *))))
 ((name . lset-intersection)
  (signature lambda ((procedure? =) (list? list1) (list? list2) ...) list?)
  (tags pure)
  (subsigs (= (lambda (a b) *))))
 ((name . lset-intersection!)
  (signature lambda ((procedure? =) (list? list1) (list? list2) ...) list?)
  (subsigs (= (lambda (a b) *))))
 ((name . lset-difference)
  (signature lambda ((procedure? =) (list? list1) (list? list2) ...) list?)
  (tags pure)
  (subsigs (= (lambda (a b) *))))
 ((name . lset-difference!)
  (signature lambda ((procedure? =) (list? list1) (list? list2) ...) list?)
  (subsigs (= (lambda (a b) *))))
 ((name . lset-xor)
  (signature lambda ((procedure? =) (list? list1) ...) list?)
  (tags pure)
  (subsigs (= (lambda (a b) *))))
 ((name . lset-xor!)
  (signature lambda ((procedure? =) (list? list1) ...) list?)
  (subsigs (= (lambda (a b) *))))
 ((name . lset-diff+intersection)
  (signature
   lambda
   ((procedure? =) (list? list1) (list? list2) ...)
   (values list? list?))
  (tags pure)
  (subsigs (= (lambda (a b) *))))
 ((name . lset-diff+intersection!)
  (signature
   lambda
   ((procedure? =) (list? list1) (list? list2) ...)
   (values list? list?))
  (subsigs (= (lambda (a b) *))))
 ((name . set-car!) (signature lambda ((pair? pair) object) undefined))
 ((name . set-cdr!) (signature lambda ((pair? pair) object) undefined)))
