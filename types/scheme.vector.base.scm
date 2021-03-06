(
 
 ((name . make-c128vector)
  (signature lambda ((integer? size)) c128vector?))
 ((name . make-c128vector)
  (signature lambda ((integer? size) (c128? size)) c128vector?)
  (tags pure))
 ((name . c128vector)
  (signature lambda ((c128? value) ...) c128vector?)
  (tags pure))
 ((name . c128?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (supertypes number?))
 ((name . c128vector?)
  (signature lambda (obj) boolean?)
  (tags pure predicate))
 ((name . c128vector-ref)
  (signature lambda ((c128vector? vec) (integer? i)) c128?)
  (tags pure))
 ((name . c128vector-length)
  (signature lambda ((c128vector? vec)) integer?)
  (tags pure))
 ((name . c128vector-set!)
  (signature lambda ((c128vector? vec) (integer? i) (c128? value)) undefined))
 ((name . c128vector->list)
  (signature lambda ((c128vector? vec)) list?)
  (tags pure))
 ((name . c128vector->list)
  (signature lambda ((c128vector? vec) (integer? start)) list?)
  (tags pure))
 ((name . c128vector->list)
  (signature lambda ((c128vector? vec) (integer? start) (integer? end)) list?)
  (tags pure))
 ((name . list->c128vector)
  (signature lambda ((list? proper-list)) c128vector?)
  (tags pure))

 ((name . make-c64vector)
  (signature lambda ((integer? size)) c64vector?))
 ((name . make-c64vector)
  (signature lambda ((integer? size) (c64? size)) c64vector?)
  (tags pure))
 ((name . c64vector)
  (signature lambda ((c64? value) ...) c64vector?)
  (tags pure))
 ((name . c64?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (supertypes number?))
 ((name . c64vector?)
  (signature lambda (obj) boolean?)
  (tags pure predicate))
 ((name . c64vector-ref)
  (signature lambda ((c64vector? vec) (integer? i)) c64?)
  (tags pure))
 ((name . c64vector-length)
  (signature lambda ((c64vector? vec)) integer?)
  (tags pure))
 ((name . c64vector-set!)
  (signature lambda ((c64vector? vec) (integer? i) (c64? value)) undefined))
 ((name . c64vector->list)
  (signature lambda ((c64vector? vec)) list?)
  (tags pure))
 ((name . c64vector->list)
  (signature lambda ((c64vector? vec) (integer? start)) list?)
  (tags pure))
 ((name . c64vector->list)
  (signature lambda ((c64vector? vec) (integer? start) (integer? end)) list?)
  (tags pure))
 ((name . list->c64vector)
  (signature lambda ((list? proper-list)) c64vector?)
  (tags pure))

 ((name . make-f32vector)
  (signature lambda ((integer? size)) f32vector?))
 ((name . make-f32vector)
  (signature lambda ((integer? size) (f32? size)) f32vector?)
  (tags pure))
 ((name . f32vector)
  (signature lambda ((f32? value) ...) f32vector?)
  (tags pure))
 ((name . f32?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (supertypes real?))
 ((name . f32vector?)
  (signature lambda (obj) boolean?)
  (tags pure predicate))
 ((name . f32vector-ref)
  (signature lambda ((f32vector? vec) (integer? i)) f32?)
  (tags pure))
 ((name . f32vector-length)
  (signature lambda ((f32vector? vec)) integer?)
  (tags pure))
 ((name . f32vector-set!)
  (signature lambda ((f32vector? vec) (integer? i) (f32? value)) undefined))
 ((name . f32vector->list)
  (signature lambda ((f32vector? vec)) list?)
  (tags pure))
 ((name . f32vector->list)
  (signature lambda ((f32vector? vec) (integer? start)) list?)
  (tags pure))
 ((name . f32vector->list)
  (signature lambda ((f32vector? vec) (integer? start) (integer? end)) list?)
  (tags pure))
 ((name . list->f32vector)
  (signature lambda ((list? proper-list)) f32vector?)
  (tags pure))

 ((name . make-f64vector)
  (signature lambda ((integer? size)) f64vector?))
 ((name . make-f64vector)
  (signature lambda ((integer? size) (f64? size)) f64vector?)
  (tags pure))
 ((name . f64vector)
  (signature lambda ((f64? value) ...) f64vector?)
  (tags pure))
 ((name . f64?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (supertypes real?))
 ((name . f64vector?)
  (signature lambda (obj) boolean?)
  (tags pure predicate))
 ((name . f64vector-ref)
  (signature lambda ((f64vector? vec) (integer? i)) f64?)
  (tags pure))
 ((name . f64vector-length)
  (signature lambda ((f64vector? vec)) integer?)
  (tags pure))
 ((name . f64vector-set!)
  (signature lambda ((f64vector? vec) (integer? i) (f64? value)) undefined))
 ((name . f64vector->list)
  (signature lambda ((f64vector? vec)) list?)
  (tags pure))
 ((name . f64vector->list)
  (signature lambda ((f64vector? vec) (integer? start)) list?)
  (tags pure))
 ((name . f64vector->list)
  (signature lambda ((f64vector? vec) (integer? start) (integer? end)) list?)
  (tags pure))
 ((name . list->f64vector)
  (signature lambda ((list? proper-list)) f64vector?)
  (tags pure))

 ((name . make-s16vector)
  (signature lambda ((integer? size)) s16vector?))
 ((name . make-s16vector)
  (signature lambda ((integer? size) (s16? size)) s16vector?)
  (tags pure))
 ((name . s16vector)
  (signature lambda ((s16? value) ...) s16vector?)
  (tags pure))
 ((name . s16?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (supertypes integer?))
 ((name . s16vector?)
  (signature lambda (obj) boolean?)
  (tags pure predicate))
 ((name . s16vector-ref)
  (signature lambda ((s16vector? vec) (integer? i)) s16?)
  (tags pure))
 ((name . s16vector-length)
  (signature lambda ((s16vector? vec)) integer?)
  (tags pure))
 ((name . s16vector-set!)
  (signature lambda ((s16vector? vec) (integer? i) (s16? value)) undefined))
 ((name . s16vector->list)
  (signature lambda ((s16vector? vec)) list?)
  (tags pure))
 ((name . s16vector->list)
  (signature lambda ((s16vector? vec) (integer? start)) list?)
  (tags pure))
 ((name . s16vector->list)
  (signature lambda ((s16vector? vec) (integer? start) (integer? end)) list?)
  (tags pure))
 ((name . list->s16vector)
  (signature lambda ((list? proper-list)) s16vector?)
  (tags pure))

 ((name . make-s32vector)
  (signature lambda ((integer? size)) s32vector?))
 ((name . make-s32vector)
  (signature lambda ((integer? size) (s32? size)) s32vector?)
  (tags pure))
 ((name . s32vector)
  (signature lambda ((s32? value) ...) s32vector?)
  (tags pure))
 ((name . s32?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (supertypes integer?))
 ((name . s32vector?)
  (signature lambda (obj) boolean?)
  (tags pure predicate))
 ((name . s32vector-ref)
  (signature lambda ((s32vector? vec) (integer? i)) s32?)
  (tags pure))
 ((name . s32vector-length)
  (signature lambda ((s32vector? vec)) integer?)
  (tags pure))
 ((name . s32vector-set!)
  (signature lambda ((s32vector? vec) (integer? i) (s32? value)) undefined))
 ((name . s32vector->list)
  (signature lambda ((s32vector? vec)) list?)
  (tags pure))
 ((name . s32vector->list)
  (signature lambda ((s32vector? vec) (integer? start)) list?)
  (tags pure))
 ((name . s32vector->list)
  (signature lambda ((s32vector? vec) (integer? start) (integer? end)) list?)
  (tags pure))
 ((name . list->s32vector)
  (signature lambda ((list? proper-list)) s32vector?)
  (tags pure))

 ((name . make-s64vector)
  (signature lambda ((integer? size)) s64vector?))
 ((name . make-s64vector)
  (signature lambda ((integer? size) (s64? size)) s64vector?)
  (tags pure))
 ((name . s64vector)
  (signature lambda ((s64? value) ...) s64vector?)
  (tags pure))
 ((name . s64?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (supertypes integer?))
 ((name . s64vector?)
  (signature lambda (obj) boolean?)
  (tags pure predicate))
 ((name . s64vector-ref)
  (signature lambda ((s64vector? vec) (integer? i)) s64?)
  (tags pure))
 ((name . s64vector-length)
  (signature lambda ((s64vector? vec)) integer?)
  (tags pure))
 ((name . s64vector-set!)
  (signature lambda ((s64vector? vec) (integer? i) (s64? value)) undefined))
 ((name . s64vector->list)
  (signature lambda ((s64vector? vec)) list?)
  (tags pure))
 ((name . s64vector->list)
  (signature lambda ((s64vector? vec) (integer? start)) list?)
  (tags pure))
 ((name . s64vector->list)
  (signature lambda ((s64vector? vec) (integer? start) (integer? end)) list?)
  (tags pure))
 ((name . list->s64vector)
  (signature lambda ((list? proper-list)) s64vector?)
  (tags pure))

 ((name . make-s8vector)
  (signature lambda ((integer? size)) s8vector?))
 ((name . make-s8vector)
  (signature lambda ((integer? size) (s8? size)) s8vector?)
  (tags pure))
 ((name . s8vector)
  (signature lambda ((s8? value) ...) s8vector?)
  (tags pure))
 ((name . s8?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (supertypes integer?))
 ((name . s8vector?)
  (signature lambda (obj) boolean?)
  (tags pure predicate))
 ((name . s8vector-ref)
  (signature lambda ((s8vector? vec) (integer? i)) s8?)
  (tags pure))
 ((name . s8vector-length)
  (signature lambda ((s8vector? vec)) integer?)
  (tags pure))
 ((name . s8vector-set!)
  (signature lambda ((s8vector? vec) (integer? i) (s8? value)) undefined))
 ((name . s8vector->list)
  (signature lambda ((s8vector? vec)) list?)
  (tags pure))
 ((name . s8vector->list)
  (signature lambda ((s8vector? vec) (integer? start)) list?)
  (tags pure))
 ((name . s8vector->list)
  (signature lambda ((s8vector? vec) (integer? start) (integer? end)) list?)
  (tags pure))
 ((name . list->s8vector)
  (signature lambda ((list? proper-list)) s8vector?)
  (tags pure))

 ((name . make-u16vector)
  (signature lambda ((integer? size)) u16vector?))
 ((name . make-u16vector)
  (signature lambda ((integer? size) (u16? size)) u16vector?)
  (tags pure))
 ((name . u16vector)
  (signature lambda ((u16? value) ...) u16vector?)
  (tags pure))
 ((name . u16?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (supertypes integer?))
 ((name . u16vector?)
  (signature lambda (obj) boolean?)
  (tags pure predicate))
 ((name . u16vector-ref)
  (signature lambda ((u16vector? vec) (integer? i)) u16?)
  (tags pure))
 ((name . u16vector-length)
  (signature lambda ((u16vector? vec)) integer?)
  (tags pure))
 ((name . u16vector-set!)
  (signature lambda ((u16vector? vec) (integer? i) (u16? value)) undefined))
 ((name . u16vector->list)
  (signature lambda ((u16vector? vec)) list?)
  (tags pure))
 ((name . u16vector->list)
  (signature lambda ((u16vector? vec) (integer? start)) list?)
  (tags pure))
 ((name . u16vector->list)
  (signature lambda ((u16vector? vec) (integer? start) (integer? end)) list?)
  (tags pure))
 ((name . list->u16vector)
  (signature lambda ((list? proper-list)) u16vector?)
  (tags pure))

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

 ((name . make-u64vector)
  (signature lambda ((integer? size)) u64vector?))
 ((name . make-u64vector)
  (signature lambda ((integer? size) (u64? size)) u64vector?)
  (tags pure))
 ((name . u64vector)
  (signature lambda ((u64? value) ...) u64vector?)
  (tags pure))
 ((name . u64?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (supertypes integer?))
 ((name . u64vector?)
  (signature lambda (obj) boolean?)
  (tags pure predicate))
 ((name . u64vector-ref)
  (signature lambda ((u64vector? vec) (integer? i)) u64?)
  (tags pure))
 ((name . u64vector-length)
  (signature lambda ((u64vector? vec)) integer?)
  (tags pure))
 ((name . u64vector-set!)
  (signature lambda ((u64vector? vec) (integer? i) (u64? value)) undefined))
 ((name . u64vector->list)
  (signature lambda ((u64vector? vec)) list?)
  (tags pure))
 ((name . u64vector->list)
  (signature lambda ((u64vector? vec) (integer? start)) list?)
  (tags pure))
 ((name . u64vector->list)
  (signature lambda ((u64vector? vec) (integer? start) (integer? end)) list?)
  (tags pure))
 ((name . list->u64vector)
  (signature lambda ((list? proper-list)) u64vector?)
  (tags pure))

 ((name . make-u8vector)
  (signature lambda ((integer? size)) u8vector?))
 ((name . make-u8vector)
  (signature lambda ((integer? size) (u8? size)) u8vector?)
  (tags pure))
 ((name . u8vector)
  (signature lambda ((u8? value) ...) u8vector?)
  (tags pure))
 ((name . u8?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (supertypes integer?))
 ((name . u8vector?)
  (signature lambda (obj) boolean?)
  (tags pure predicate))
 ((name . u8vector-ref)
  (signature lambda ((u8vector? vec) (integer? i)) u8?)
  (tags pure))
 ((name . u8vector-length)
  (signature lambda ((u8vector? vec)) integer?)
  (tags pure))
 ((name . u8vector-set!)
  (signature lambda ((u8vector? vec) (integer? i) (u8? value)) undefined))
 ((name . u8vector->list)
  (signature lambda ((u8vector? vec)) list?)
  (tags pure))
 ((name . u8vector->list)
  (signature lambda ((u8vector? vec) (integer? start)) list?)
  (tags pure))
 ((name . u8vector->list)
  (signature lambda ((u8vector? vec) (integer? start) (integer? end)) list?)
  (tags pure))
 ((name . list->u8vector)
  (signature lambda ((list? proper-list)) u8vector?)
  (tags pure)))
