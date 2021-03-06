(((name . flonum?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (subsigs)
  (supertypes real?))
 ((name . real->flonum)
  (signature lambda ((real? x)) flonum?)
  (tags pure))
 ((name . fl=?)
  (signature lambda ((flonum? x) (flonum? y) (flonum? z) ...) boolean?)
  (tags pure))
 ((name . fl<?)
  (signature lambda ((flonum? x) (flonum? y) (flonum? z) ...) boolean?)
  (tags pure))
 ((name . fl>?)
  (signature lambda ((flonum? x) (flonum? y) (flonum? z) ...) boolean?)
  (tags pure))
 ((name . fl<=?)
  (signature lambda ((flonum? x) (flonum? y) (flonum? z) ...) boolean?)
  (tags pure))
 ((name . fl>=?)
  (signature lambda ((flonum? x) (flonum? y) (flonum? z) ...) boolean?)
  (tags pure))
 ((name . flinteger?) (signature lambda ((flonum? x)) boolean?) (tags pure))
 ((name . flzero?) (signature lambda ((flonum? x)) boolean?) (tags pure))
 ((name . flpositive?) (signature lambda ((flonum? x)) boolean?) (tags pure))
 ((name . flnegative?) (signature lambda ((flonum? x)) boolean?) (tags pure))
 ((name . flodd?) (signature lambda ((flonum? x)) boolean?) (tags pure))
 ((name . fleven?) (signature lambda ((flonum? x)) boolean?) (tags pure))
 ((name . flfinite?) (signature lambda ((flonum? x)) boolean?) (tags pure))
 ((name . flinfinite?) (signature lambda ((flonum? x)) boolean?) (tags pure))
 ((name . flnan?) (signature lambda ((flonum? x)) boolean?) (tags pure))
 ((name . flmax) (signature lambda ((flonum? x) ...) flonum?) (tags pure))
 ((name . flmin) (signature lambda ((flonum? x) ...) flonum?) (tags pure))
 ((name . fl+) (signature lambda ((flonum? x) ...) flonum?) (tags pure))
 ((name . fl*) (signature lambda ((flonum? x) ...) flonum?) (tags pure))
 ((name . fl-)
  (signature lambda ((flonum? x)) flonum?)
  (tags pure))
 ((name . fl-)
  (signature lambda ((flonum? x) (flonum? y) ...) flonum?)
  (tags pure))
 ((name . fl/)
  (signature lambda ((flonum? x)) flonum?)
  (tags pure))
 ((name . fl/)
  (signature lambda ((flonum? x) (flonum? y) ...) flonum?)
  (tags pure))
 ((name . flabs) (signature lambda ((flonum? x)) flonum?) (tags pure))
 ((name . fldiv) (signature lambda ((flonum? x1) (flonum? x2)) flonum?) (tags pure))
 ((name . fldiv0) (signature lambda ((flonum? x1) (flonum? x2)) flonum?) (tags pure))
 ((name . fldiv-and-mod) (signature lambda ((flonum? x1) (flonum? x2)) (values flonum? flonum?)) (tags pure))
 ((name . fldiv0-and-mod0) (signature lambda ((flonum? x1) (flonum? x2)) (values flonum? flonum?)) (tags pure))
 ((name . flmod) (signature lambda ((flonum? x1) (flonum? x2)) flonum?) (tags pure))
 ((name . flmod0) (signature lambda ((flonum? x1) (flonum? x2)) flonum?) (tags pure))
 ((name . flnumerator) (signature lambda ((flonum? x)) flonum?) (tags pure))
 ((name . fldenominator) (signature lambda ((flonum? x)) flonum?) (tags pure))
 ((name . flfloor) (signature lambda ((flonum? x)) flonum?) (tags pure))
 ((name . flceiling) (signature lambda ((flonum? x)) flonum?) (tags pure))
 ((name . flround) (signature lambda ((flonum? x)) flonum?) (tags pure))
 ((name . fltruncate) (signature lambda ((flonum? x)) flonum?) (tags pure))
 ((name . flexp) (signature lambda ((flonum? x)) flonum?) (tags pure))
 ((name . fllog) (signature lambda ((flonum? x)) flonum?) (tags pure))
 ((name . fllog) (signature lambda ((flonum? x) (flonum? base)) flonum?) (tags pure))
 ((name . flsin) (signature lambda ((flonum? x)) flonum?) (tags pure))
 ((name . flcos) (signature lambda ((flonum? x)) flonum?) (tags pure))
 ((name . fltan) (signature lambda ((flonum? x)) flonum?) (tags pure))
 ((name . flasin) (signature lambda ((flonum? x)) flonum?) (tags pure))
 ((name . flacos) (signature lambda ((flonum? x)) flonum?) (tags pure))
 ((name . flatan) (signature lambda ((flonum? x)) flonum?) (tags pure))
 ((name . flatan)
  (signature lambda ((flonum? y) (flonum? x)) flonum?)
  (tags pure))
 ((name . flsqrt) (signature lambda ((flonum? x)) flonum?) (tags pure))
 ((name . flexpt)
  (signature lambda ((flonum? x) (flonum? y)) flonum?)
  (tags pure))
 ((name . &no-infinities)
  (signature value record-type-descriptor?))
 ((name . make-no-infinities-violation)
  (signature lambda (obj) no-infinities-violation?)
  (tags pure))
 ((name . no-infinities-violation?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (supertypes implementation-restriction-violation?))
 ((name . &no-nans)
  (signature value record-type-descriptor?))
 ((name . make-no-nans-violation)
  (signature lambda (obj) no-nans-violation?)
  (tags pure))
 ((name . no-nans-violation?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (supertypes implementation-restriction-violation?))
 ((name . fixnum->flonum)
  (signature lambda ((fixnum? fx)) flonum?)
  (tags pure)))
