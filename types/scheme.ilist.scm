(((name . ipair) (signature lambda (a d) ipair?) (tags pure))
 ((name . ilist) (signature lambda (object ...) ilist?) (tags pure))
 ((name . xipair) (signature lambda (d a) ipair?) (tags pure))
 ((name . ipair*) (signature lambda (elt1 elt2 ...) *))
 ((name . make-ilist) (signature lambda ((integer? n)) ilist?))
 ((name . make-ilist)
  (signature lambda ((integer? n) fill) ilist?)
  (tags pure))
 ((name . ilist-tabulate)
  (signature lambda ((integer? n) (procedure? init-proc)) ilist?)
  (tags pure)
  (subsigs (init-proc (lambda ((integer? i)) *))))
 ((name . ilist-copy) (signature lambda ((ilist? dilist)) ilist?) (tags pure))
 ((name . ilist-copy)
  (signature lambda ((dotted-ilist? dilist)) dotted-ilist?)
  (tags pure))
 ((name . iiota) (signature lambda ((integer? count)) ilist?) (tags pure))
 ((name . iiota)
  (signature lambda ((integer? count) (number? start)) ilist?)
  (tags pure))
 ((name . iiota)
  (signature lambda ((integer? count) (number? start) (number? step)) ilist?)
  (tags pure))
 ((name . proper-ilist?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (subsigs)
  (supertypes ilist?))
 ((name . ilist?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (subsigs)
  (supertypes ilist?))
 ((name . dotted-ilist?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (subsigs)
  (supertypes ipair?))
 ((name . ipair?) (signature lambda (obj) boolean?) (tags pure predicate))
 ((name . null-ilist?)
  (signature lambda ((ilist? lst)) boolean?)
  (tags pure predicate))
 ((name . not-ipair?) (signature lambda (obj) boolean?) (tags pure predicate))
 ((name . ilist=)
  (signature lambda ((procedure? elt=) (ilist? ilist1) ...) boolean?)
  (tags pure)
  (subsigs (elt= (lambda (a b) *))))
 ((name . icaar) (signature lambda ((ipair? ipair)) *) (tags pure))
 ((name . icadr) (signature lambda ((ipair? ipair)) *) (tags pure))
 ((name . icar) (signature lambda ((ipair? ipair)) *) (tags pure))
 ((name . icdar) (signature lambda ((ipair? ipair)) *) (tags pure))
 ((name . icddr) (signature lambda ((ipair? ipair)) *) (tags pure))
 ((name . icdr) (signature lambda ((ipair? ipair)) *) (tags pure))
 ((name . icaaaar) (signature lambda ((ipair? ipair)) *) (tags pure))
 ((name . icaaadr) (signature lambda ((ipair? ipair)) *) (tags pure))
 ((name . icaaar) (signature lambda ((ipair? ipair)) *) (tags pure))
 ((name . icaadar) (signature lambda ((ipair? ipair)) *) (tags pure))
 ((name . icaaddr) (signature lambda ((ipair? ipair)) *) (tags pure))
 ((name . icaadr) (signature lambda ((ipair? ipair)) *) (tags pure))
 ((name . icadaar) (signature lambda ((ipair? ipair)) *) (tags pure))
 ((name . icadadr) (signature lambda ((ipair? ipair)) *) (tags pure))
 ((name . icadar) (signature lambda ((ipair? ipair)) *) (tags pure))
 ((name . icaddar) (signature lambda ((ipair? ipair)) *) (tags pure))
 ((name . icadddr) (signature lambda ((ipair? ipair)) *) (tags pure))
 ((name . icaddr) (signature lambda ((ipair? ipair)) *) (tags pure))
 ((name . icdaaar) (signature lambda ((ipair? ipair)) *) (tags pure))
 ((name . icdaadr) (signature lambda ((ipair? ipair)) *) (tags pure))
 ((name . icdaar) (signature lambda ((ipair? ipair)) *) (tags pure))
 ((name . icdadar) (signature lambda ((ipair? ipair)) *) (tags pure))
 ((name . icdaddr) (signature lambda ((ipair? ipair)) *) (tags pure))
 ((name . icdadr) (signature lambda ((ipair? ipair)) *) (tags pure))
 ((name . icddaar) (signature lambda ((ipair? ipair)) *) (tags pure))
 ((name . icddadr) (signature lambda ((ipair? ipair)) *) (tags pure))
 ((name . icddar) (signature lambda ((ipair? ipair)) *) (tags pure))
 ((name . icdddar) (signature lambda ((ipair? ipair)) *) (tags pure))
 ((name . icddddr) (signature lambda ((ipair? ipair)) *) (tags pure))
 ((name . icdddr) (signature lambda ((ipair? ipair)) *) (tags pure))
 ((name . ilist-ref)
  (signature lambda ((ilist? ilist) (integer? i)) *)
  (tags pure))
 ((name . ifirst) (signature lambda ((ipair? ipair)) *) (tags pure))
 ((name . isecond) (signature lambda ((ipair? ipair)) *) (tags pure))
 ((name . ithird) (signature lambda ((ipair? ipair)) *) (tags pure))
 ((name . ifourth) (signature lambda ((ipair? ipair)) *) (tags pure))
 ((name . ififth) (signature lambda ((ipair? ipair)) *) (tags pure))
 ((name . isixth) (signature lambda ((ipair? ipair)) *) (tags pure))
 ((name . iseventh) (signature lambda ((ipair? ipair)) *) (tags pure))
 ((name . ieighth) (signature lambda ((ipair? ipair)) *) (tags pure))
 ((name . ininth) (signature lambda ((ipair? ipair)) *) (tags pure))
 ((name . itenth) (signature lambda ((ipair? ipair)) *) (tags pure))
 ((name . icar+cdr)
  (signature lambda ((ipair? ipair)) (values * *))
  (tags pure))
 ((name . itake)
  (signature lambda ((ilist? x) (integer? i)) ilist?)
  (tags pure))
 ((name . itake)
  (signature lambda ((dotted-ilist? x) (integer? i)) ilist?)
  (tags pure))
 ((name . idrop)
  (signature lambda ((ilist? x) (integer? i)) ilist?)
  (tags pure))
 ((name . idrop)
  (signature lambda ((dotted-ilist? x) (integer? i)) *)
  (tags pure))
 ((name . itake-right)
  (signature lambda ((ilist? dilist) (integer? i)) ilist?)
  (tags pure))
 ((name . itake-right)
  (signature lambda ((dotted-ilist? dilist) (integer? i)) *)
  (tags pure))
 ((name . idrop-right)
  (signature lambda ((ilist? dilist) (integer? i)) ilist?)
  (tags pure))
 ((name . idrop-right)
  (signature lambda ((dotted-ilist? dilist) (integer? i)) ilist?)
  (tags pure))
 ((name . isplit-at)
  (signature lambda ((ilist? x) (integer? i)) (values ilist? ilist?))
  (tags pure))
 ((name . isplit-at)
  (signature lambda ((dotted-ilist? x) (integer? i)) (values ilist? *))
  (tags pure))
 ((name . ilast) (signature lambda ((ilist? ipair)) *) (tags pure))
 ((name . ilast-ipair) (signature lambda ((ilist? ipair)) ipair?) (tags pure))
 ((name . ilength) (signature lambda ((ilist? ilist)) integer?) (tags pure))
 ((name . iappend) (signature lambda ((ilist? ilist) ...) ilist?) (tags pure))
 ((name . iappend) (signature lambda ((ilist? ilist) ... obj) *) (tags pure))
 ((name . iconcatenate)
  (signature lambda ((ilist? ilist-of-ilists)) *)
  (tags pure))
 ((name . ireverse) (signature lambda ((ilist? ilist)) ilist?) (tags pure))
 ((name . iappend-reverse)
  (signature lambda ((ilist? rev-head) (ilist? tail)) ilist?)
  (tags pure))
 ((name . iappend-reverse)
  (signature lambda ((ilist? rev-head) tail) *)
  (tags pure))
 ((name . izip)
  (signature lambda ((ilist? ilist1) (ilist? ilist2) ...) ilist?)
  (tags pure))
 ((name . iunzip1) (signature lambda ((ilist? ilist)) ilist?) (tags pure))
 ((name . iunzip2)
  (signature lambda ((ilist? ilist)) (values ilist? ilist?))
  (tags pure))
 ((name . iunzip3)
  (signature lambda ((ilist? ilist)) (values ilist? ilist? ilist?))
  (tags pure))
 ((name . iunzip4)
  (signature lambda ((ilist? ilist)) (values ilist? ilist? ilist? ilist?))
  (tags pure))
 ((name . iunzip5)
  (signature
   lambda
   ((ilist? ilist))
   (values ilist? ilist? ilist? ilist? ilist?))
  (tags pure))
 ((name . icount)
  (signature
   lambda
   ((procedure? pred) (ilist? ilist1) (ilist? ilist2) ...)
   integer?)
  (tags pure)
  (subsigs (pred (lambda (obj ...) *))))
 ((name . ifold)
  (signature
   lambda
   ((procedure? kons) knil (ilist? ilist1) (ilist? ilist2) ...)
   *)
  (tags pure)
  (subsigs (kons (lambda (obj1 obj2 ... fold-state) *))))
 ((name . ifold-right)
  (signature
   lambda
   ((procedure? kons) knil (ilist? ilist1) (ilist? ilist2) ...)
   *)
  (tags pure)
  (subsigs (kons (lambda (obj1 obj2 ... fold-state) *))))
 ((name . ipair-fold)
  (signature
   lambda
   ((procedure? kons) knil (ilist? ilist1) (ilist? ilist2) ...)
   *)
  (tags pure)
  (subsigs (kons (lambda ((ipair? ipair1) (ipair? ipair2) ... fold-state) *))))
 ((name . ipair-fold-right)
  (signature
   lambda
   ((procedure? kons) knil (ilist? ilist1) (ilist? ilist2) ...)
   *)
  (tags pure)
  (subsigs (kons (lambda ((ipair? ipair1) (ipair? ipair2) ... fold-state) *))))
 ((name . ireduce)
  (signature lambda ((procedure? f) ridentity (ilist? ilist)) *)
  (tags pure)
  (subsigs (f (lambda (obj fold-state) *))))
 ((name . ireduce-right)
  (signature lambda ((procedure? f) ridentity (ilist? ilist)) *)
  (tags pure)
  (subsigs (f (lambda (obj fold-state) *))))
 ((name . iunfold)
  (signature lambda ((procedure? p) (procedure? f) (procedure? g) seed) ilist?)
  (tags pure)
  (subsigs
   (p (lambda (seed) boolean?))
   (f (lambda (seed) *))
   (g (lambda (seed) *))))
 ((name . iunfold)
  (signature
   lambda
   ((procedure? p) (procedure? f) (procedure? g) seed (ilist? tail-gen))
   *)
  (tags pure)
  (subsigs
   (p (lambda (seed) boolean?))
   (f (lambda (seed) *))
   (g (lambda (seed) *))
   (tail-gen (lambda () *))))
 ((name . iunfold-right)
  (signature lambda ((procedure? p) (procedure? f) (procedure? g) seed) ilist?)
  (tags pure)
  (subsigs
   (p (lambda (seed) boolean?))
   (f (lambda (seed) *))
   (g (lambda (seed) *))))
 ((name . iunfold-right)
  (signature
   lambda
   ((procedure? p) (procedure? f) (procedure? g) seed (ilist? tail-gen))
   *)
  (tags pure)
  (subsigs
   (p (lambda (seed) boolean?))
   (f (lambda (seed) *))
   (g (lambda (seed) *))
   (tail-gen (lambda () *))))
 ((name . imap)
  (signature
   lambda
   ((procedure? proc) (ilist? ilist1) (ilist? ilist2) ...)
   ilist?)
  (tags pure)
  (subsigs (proc (lambda (obj1 obj2 ...) *))))
 ((name . ifor-each)
  (signature
   lambda
   ((procedure? proc) (ilist? ilist1) (ilist? ilist2) ...)
   undefined)
  (subsigs (proc (lambda (obj1 obj2 ...) undefined))))
 ((name . iappend-map)
  (signature
   lambda
   ((procedure? proc) (ilist? ilist1) (ilist? ilist2) ...)
   ilist?)
  (tags pure)
  (subsigs (proc (lambda (obj1 obj2 ...) ilist?))))
 ((name . imap-in-order)
  (signature
   lambda
   ((procedure? proc) (ilist? ilist1) (ilist? ilist2) ...)
   ilist?)
  (subsigs (proc (lambda (obj1 obj2 ...) *))))
 ((name . ipair-for-each)
  (signature
   lambda
   ((procedure? proc) (ilist? ilist1) (ilist? ilist2) ...)
   undefined)
  (subsigs (proc (lambda ((ipair? obj1) (ipair? obj2) ...) undefined))))
 ((name . ifilter-map)
  (signature
   lambda
   ((procedure? proc) (ilist? ilist1) (ilist? ilist2) ...)
   ilist?)
  (tags pure)
  (subsigs (proc (lambda (obj1 obj2 ...) *))))
 ((name . ifilter)
  (signature lambda ((procedure? pred) (ilist? ilist)) ilist?)
  (tags pure)
  (subsigs (pred (lambda (obj) *))))
 ((name . ipartition)
  (signature lambda ((procedure? pred) (ilist? ilist)) (values ilist? ilist?))
  (tags pure)
  (subsigs (pred (lambda (obj) *))))
 ((name . iremove)
  (signature lambda ((procedure? pred) (ilist? ilist)) ilist?)
  (tags pure)
  (subsigs (pred (lambda (obj) *))))
 ((name . ifind)
  (signature lambda ((procedure? pred) (ilist? ilist)) *)
  (tags pure)
  (subsigs (pred (lambda (obj) *))))
 ((name . ifind-tail)
  (signature lambda ((procedure? pred) (ilist? ilist)) (or ipair? #f))
  (tags pure)
  (subsigs (pred (lambda (obj) *))))
 ((name . itake-while)
  (signature lambda ((procedure? pred) (ilist? ilist)) ilist?)
  (tags pure)
  (subsigs (pred (lambda (obj) *))))
 ((name . idrop-while)
  (signature lambda ((procedure? pred) (ilist? ilist)) ilist?)
  (tags pure)
  (subsigs (pred (lambda (obj) *))))
 ((name . ispan)
  (signature lambda ((procedure? pred) (ilist? ilist)) (values ilist? ilist?))
  (tags pure)
  (subsigs (pred (lambda (obj) *))))
 ((name . ibreak)
  (signature lambda ((procedure? pred) (ilist? ilist)) (values ilist? ilist?))
  (tags pure)
  (subsigs (pred (lambda (obj) *))))
 ((name . iany)
  (signature lambda ((procedure? pred) (ilist? ilist1) (ilist? ilist2) ...) *)
  (tags pure)
  (subsigs (pred (lambda (obj1 obj2 ...) *))))
 ((name . ievery)
  (signature lambda ((procedure? pred) (ilist? ilist1) (ilist? ilist2) ...) *)
  (tags pure)
  (subsigs (pred (lambda (obj1 obj2 ...) *))))
 ((name . ilist-index)
  (signature
   lambda
   ((procedure? pred) (ilist? ilist1) (ilist? ilist2) ...)
   (or integer? #f))
  (tags pure)
  (subsigs (pred (lambda (obj1 obj2 ...) *))))
 ((name . imember)
  (signature lambda (obj (ilist? ilist)) (or #f ilist?))
  (tags pure))
 ((name . imember)
  (signature lambda (obj (ilist? ilist) (procedure? =)) (or #f ilist?))
  (tags pure)
  (subsigs (= (lambda (obj1 obj2) *))))
 ((name . imemq)
  (signature lambda (obj (ilist? ilist)) (or #f ilist?))
  (tags pure))
 ((name . imemv)
  (signature lambda (obj (ilist? ilist)) (or #f ilist?))
  (tags pure))
 ((name . idelete) (signature lambda (obj (ilist? ilist)) ilist?) (tags pure))
 ((name . idelete)
  (signature lambda (obj (ilist? ilist) (procedure? =)) ilist?)
  (tags pure)
  (subsigs (= (lambda (obj1 obj2) *))))
 ((name . idelete-duplicates)
  (signature lambda ((ilist? ilist)) ilist?)
  (tags pure))
 ((name . idelete-duplicates)
  (signature lambda ((ilist? ilist) (procedure? =)) ilist?)
  (tags pure)
  (subsigs (= (lambda (obj1 obj2) *))))
 ((name . iassoc)
  (signature lambda (obj (ilist? ialist)) (or ilist? #f))
  (tags pure))
 ((name . iassoc)
  (signature lambda (obj (ilist? ialist) (procedure? =)) (or ipair? #f))
  (tags pure)
  (subsigs (= (lambda (a b) *))))
 ((name . iassq)
  (signature lambda (obj (ilist? ialist)) (or ipair? #f))
  (tags pure))
 ((name . iassv)
  (signature lambda (obj (ilist? ialist)) (or ipair? #f))
  (tags pure))
 ((name . ialist-cons)
  (signature lambda (key datum (ilist? ialist)) ilist?)
  (tags pure))
 ((name . ialist-delete)
  (signature lambda (key (ilist? ialist)) ilist?)
  (tags pure))
 ((name . ialist-delete)
  (signature lambda (key (ilist? ialist) (procedure? =)) ilist?)
  (tags pure)
  (subsigs (= (lambda (a b) *))))
 ((name . replace-icar) (signature lambda ((ipair? ipair) object) ipair?))
 ((name . replace-icdr) (signature lambda ((ipair? ipair) object) ipair?))
 ((name . pair->ipair) (signature lambda ((pair? pair)) ipair?) (tags pure))
 ((name . ipair->pair) (signature lambda ((ipair? ipair)) pair?) (tags pure))
 ((name . list->ilist) (signature lambda ((list? flist)) ilist?) (tags pure))
 ((name . list->ilist)
  (signature lambda ((dotted-list? flist)) dotted-ilist?)
  (tags pure))
 ((name . ilist->list) (signature lambda ((ilist? flist)) list?) (tags pure))
 ((name . ilist->list)
  (signature lambda ((dotted-ilist? flist)) dotted-list?)
  (tags pure))
 ((name . tree->itree) (signature lambda ((pair? pair)) ipair?) (tags pure))
 ((name . tree->itree) (signature lambda (object) *) (tags pure))
 ((name . itree->tree) (signature lambda ((ipair? ipair)) pair?) (tags pure))
 ((name . itree->tree) (signature lambda (object) *) (tags pure))
 ((name . gtree->itree) (signature lambda ((pair? pair)) ipair?) (tags pure))
 ((name . gtree->itree) (signature lambda (object) *) (tags pure))
 ((name . gitree->tree) (signature lambda ((ipair? ipair)) pair?) (tags pure))
 ((name . gitree->tree) (signature lambda (object) *) (tags pure))
 ((name . iapply)
  (signature lambda ((procedure? proc) arg1 ... (ilist? args)) *)
  (tags pure))
 ((name . ipair-comparator) (signature value comparator?))
 ((name . ilist-comparator) (signature value comparator?))
 ((name . make-ilist-comparator)
  (signature lambda ((comparator? element-comparator)) comparator?)
  (tags pure))
 ((name . make-improper-ilist-comparator)
  (signature lambda ((comparator? element-comparator)) comparator?)
  (tags pure))
 ((name . make-ipair-comparator)
  (signature
   lambda
   ((comparator? car-comparator) (comparator? cdr-comparator))
   comparator?)
  (tags pure))
 ((name . make-icar-comparator)
  (signature lambda ((comparator? comparator)) comparator?)
  (tags pure))
 ((name . make-icdr-comparator)
  (signature lambda ((comparator? comparator)) comparator?)
  (tags pure)))
