(((name . rquote) (signature syntax-rules () ((_ datum))))
 ((name . requal?) (signature lambda (obj1 obj2) boolean?) (tags pure))
 ((name . rpair?) (signature lambda (obj) boolean?) (tags pure predicate))
 ((name . rcons) (signature lambda (obj1 obj2) rpair?) (tags pure))
 ((name . rcar) (signature lambda ((rpair? pair)) *) (tags pure))
 ((name . rcdr) (signature lambda ((rpair? pair)) *) (tags pure))
 ((name . rcaar) (signature lambda ((rpair? pair)) *) (tags pure))
 ((name . rcadr) (signature lambda ((rpair? pair)) *) (tags pure))
 ((name . rcdar) (signature lambda ((rpair? pair)) *) (tags pure))
 ((name . rcddr) (signature lambda ((rpair? pair)) *) (tags pure))
 ((name . rcaaar) (signature lambda ((rpair? pair)) *) (tags pure))
 ((name . rcaadr) (signature lambda ((rpair? pair)) *) (tags pure))
 ((name . rcadar) (signature lambda ((rpair? pair)) *) (tags pure))
 ((name . rcaddr) (signature lambda ((rpair? pair)) *) (tags pure))
 ((name . rcdaar) (signature lambda ((rpair? pair)) *) (tags pure))
 ((name . rcdadr) (signature lambda ((rpair? pair)) *) (tags pure))
 ((name . rcddar) (signature lambda ((rpair? pair)) *) (tags pure))
 ((name . rcdddr) (signature lambda ((rpair? pair)) *) (tags pure))
 ((name . rcaaaar) (signature lambda ((rpair? pair)) *) (tags pure))
 ((name . rcaaadr) (signature lambda ((rpair? pair)) *) (tags pure))
 ((name . rcaadar) (signature lambda ((rpair? pair)) *) (tags pure))
 ((name . rcaaddr) (signature lambda ((rpair? pair)) *) (tags pure))
 ((name . rcadaar) (signature lambda ((rpair? pair)) *) (tags pure))
 ((name . rcadadr) (signature lambda ((rpair? pair)) *) (tags pure))
 ((name . rcaddar) (signature lambda ((rpair? pair)) *) (tags pure))
 ((name . rcadddr) (signature lambda ((rpair? pair)) *) (tags pure))
 ((name . rcdaaar) (signature lambda ((rpair? pair)) *) (tags pure))
 ((name . rcdaadr) (signature lambda ((rpair? pair)) *) (tags pure))
 ((name . rcdadar) (signature lambda ((rpair? pair)) *) (tags pure))
 ((name . rcdaddr) (signature lambda ((rpair? pair)) *) (tags pure))
 ((name . rcddaar) (signature lambda ((rpair? pair)) *) (tags pure))
 ((name . rcddadr) (signature lambda ((rpair? pair)) *) (tags pure))
 ((name . rcdddar) (signature lambda ((rpair? pair)) *) (tags pure))
 ((name . rcddddr) (signature lambda ((rpair? pair)) *) (tags pure))
 ((name . rnull?) (signature lambda (obj) boolean?) (tags pure))
 ((name . rlist?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (subsigs)
  (supertypes rpair?))
 ((name . rlist) (signature lambda (obj ...) rlist?) (tags pure))
 ((name . make-rlist) (signature lambda ((integer? k)) rlist?))
 ((name . make-rlist) (signature lambda ((integer? k) obj) rlist?) (tags pure))
 ((name . rlength) (signature lambda ((rlist? list)) integer?) (tags pure))
 ((name . rlength<=?)
  (signature lambda (obj (integer? k)) boolean?)
  (tags pure))
 ((name . rappend) (signature lambda ((rlist? list) ...) rlist?) (tags pure))
 ((name . rappend) (signature lambda ((rlist? list) ... obj) *) (tags pure))
 ((name . rreverse) (signature lambda ((rlist? list)) rlist?) (tags pure))
 ((name . rlist-tail)
  (signature lambda ((rlist? list) (integer? k)) rlist?)
  (tags pure))
 ((name . rlist-tail) (signature lambda (obj (integer? k)) *) (tags pure))
 ((name . rlist-ref)
  (signature lambda ((rpair? pair) (integer? k)) *)
  (tags pure))
 ((name . rlist-set)
  (signature lambda ((rpair? pair) (integer? k) obj) rpair?)
  (tags pure))
 ((name . rlist-ref/update)
  (signature
   lambda
   ((rpair? pair) (integer? k) (procedure? proc))
   (values * rpair?))
  (tags pure)
  (subsigs (proc (lambda (obj) *))))
 ((name . rmap)
  (signature
   lambda
   ((procedure? proc) (rlist? list1) (rlist? list2) ...)
   rlist?)
  (tags pure)
  (subsigs (proc (lambda (obj1 obj2 ...) *))))
 ((name . rfor-each)
  (signature
   lambda
   ((procedure? proc) (rlist? list1) (rlist? list2) ...)
   undefined)
  (tags pure)
  (subsigs (proc (lambda (obj1 obj2 ...) undefined))))
 ((name . rlist->list) (signature lambda ((rlist? rlist)) list?) (tags pure))
 ((name . list->rlist) (signature lambda ((list? list)) rlist?) (tags pure)))
