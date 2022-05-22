(((name . make-hash-table)
  (signature lambda ((comparator? comparator) arg ...) hash-table?)
  (tags pure))
 ((name . make-hash-table)
  (signature lambda ((procedure? equality-predicate) arg ...) hash-table?)
  (tags pure deprecated)
  (subsigs (equality-predicate (lambda (a b) boolean?))))
 ((name . make-hash-table)
  (signature
   lambda
   ((procedure? equality-predicate) (procedure? hash-function) arg ...)
   hash-table?)
  (tags pure deprecated)
  (subsigs
   (equality-predicate (lambda (a b) boolean?))
   (hash-function (lambda (obj) integer?))))
 ((name . hash-table)
  (signature lambda ((comparator? comparator) key1 value1 ...) hash-table?)
  (tags pure))
 ((name . hash-table-unfold)
  (signature
   lambda
   ((procedure? stop?)
    (procedure? mapper)
    (procedure? successor)
    seed
    (comparator? comparator)
    arg
    ...)
   hash-table?)
  (tags pure)
  (subsigs
   (stop? (lambda (seed) boolean?))
   (mapper (lambda (seed) (values * *)))
   (successor (lambda (seed) *))))
 ((name . alist->hash-table)
  (signature
   lambda
   ((list? alist) (comparator? comparator) arg ...)
   hash-table?)
  (tags pure))
 ((name . alist->hash-table)
  (signature
   lambda
   ((list? alist) (procedure? equality-predicate) arg ...)
   hash-table?)
  (tags pure deprecated)
  (subsigs
   (equality-predicate (lambda (a b) boolean?))
   (hash-function (lambda (obj) integer?))))
 ((name . alist->hash-table)
  (signature
   lambda
   ((list? alist)
    (procedure? equality-predicate)
    (procedure? hash-function)
    arg
    ...)
   hash-table?)
  (tags pure deprecated)
  (subsigs
   (equality-predicate (lambda (a b) boolean?))
   (hash-function (lambda (obj) integer?))))
 ((name . hash-table?) (signature lambda (obj) boolean?) (tags pure predicate))
 ((name . hash-table-contains?)
  (signature lambda ((hash-table? hash-table) key) boolean?)
  (tags pure))
 ((name . hash-table-exists?)
  (signature lambda ((hash-table? hash-table) key) boolean?)
  (tags pure deprecated))
 ((name . hash-table-empty?)
  (signature lambda ((hash-table? hash-table)) boolean?)
  (tags pure))
 ((name . hash-table=?)
  (signature
   lambda
   ((comparator? value-comparator)
    (hash-table? hash-table1)
    (hash-table? hash-table2))
   boolean?)
  (tags pure))
 ((name . hash-table-mutable?)
  (signature lambda ((hash-table? hash-table)) boolean?)
  (tags pure))
 ((name . hash-table-ref)
  (signature lambda ((hash-table? hash-table) key) *)
  (tags pure))
 ((name . hash-table-ref)
  (signature lambda ((hash-table? hash-table) key (procedure? failure)) *)
  (tags pure)
  (subsigs (failure (lambda () *))))
 ((name . hash-table-ref)
  (signature
   lambda
   ((hash-table? hash-table) key (procedure? failure) (procedure? success))
   *)
  (tags pure)
  (subsigs (failure (lambda () *)) (success (lambda (value) *))))
 ((name . hash-table-ref/default)
  (signature lambda ((hash-table? hash-table) key default) *)
  (tags pure))
 ((name . hash-table-set!)
  (signature lambda ((hash-table? hash-table) key1 value1 ...) undefined))
 ((name . hash-table-delete!)
  (signature lambda ((hash-table? hash-table) key ...) undefined))
 ((name . hash-table-intern!)
  (signature
   lambda
   ((hash-table? hash-table) key (procedure? failure))
   undefined)
  (subsigs (failure (lambda () *))))
 ((name . hash-table-update!)
  (signature
   lambda
   ((hash-table? hash-table) key (procedure? updater))
   undefined)
  (subsigs (updated (lambda (value) *))))
 ((name . hash-table-update!)
  (signature
   lambda
   ((hash-table? hash-table) key (procedure? updater) (procedure? failure))
   undefined)
  (subsigs (updater (lambda (value) *)) (failure (lambda () *))))
 ((name . hash-table-update!)
  (signature
   lambda
   ((hash-table? hash-table)
    key
    (procedure? updater)
    (procedure? failure)
    (procedure? success))
   undefined)
  (subsigs
   (updater (lambda (value) *))
   (failure (lambda () *))
   (success (lambda (value) *))))
 ((name . hash-table-update!/default)
  (signature
   lambda
   ((hash-table? hash-table) key (procedure? updater) default)
   undefined)
  (subsigs (updated (lambda (value) *))))
 ((name . hash-table-pop!)
  (signature lambda ((hash-table? hash-table)) (values * *)))
 ((name . hash-table-clear!)
  (signature lambda ((hash-table? hash-table)) undefined))
 ((name . hash-table-size)
  (signature lambda ((hash-table? hash-table)) integer?)
  (tags pure))
 ((name . hash-table-keys)
  (signature lambda ((hash-table? hash-table)) list?)
  (tags pure))
 ((name . hash-table-values)
  (signature lambda ((hash-table? hash-table)) list?)
  (tags pure))
 ((name . hash-table-entries)
  (signature lambda ((hash-table? hash-table)) (values list? list?))
  (tags pure))
 ((name . hash-table-find)
  (signature
   lambda
   ((procedure? proc) (hash-table? hash-table) (procedure? failure))
   *)
  (tags pure)
  (subsigs (proc (lambda (key value) *)) (failure (lambda () *))))
 ((name . hash-table-count)
  (signature lambda ((procedure? pred) (hash-table? hash-table)) integer?)
  (tags pure)
  (subsigs (pred (lambda (key value) boolean?))))
 ((name . hash-table-map)
  (signature
   lambda
   ((procedure? proc) (comparator? comparator) (hash-table? hash-table))
   hash-table?)
  (tags pure)
  (subsigs (proc (lambda (value) *))))
 ((name . hash-table-for-each)
  (signature lambda ((procedure? proc) (hash-table? hash-table)) undefined)
  (subsigs (proc (lambda (key value) undefined))))
 ((name . hash-table-walk)
  (signature lambda ((hash-table? hash-table) (procedure? proc)) undefined)
  (tags deprecated)
  (subsigs (proc (lambda (key value) undefined))))
 ((name . hash-table-map!)
  (signature
   lambda
   ((procedure? proc) (comparator? comparator) (hash-table? hash-table))
   undefined)
  (subsigs (proc (lambda (key value) *))))
 ((name . hash-table-map->list)
  (signature lambda ((procedure? proc) (hash-table? hash-table)) list?)
  (subsigs (proc (lambda (key value) *))))
 ((name . hash-table-fold)
  (signature lambda ((procedure? proc) seed (hash-table? hash-table)) *)
  (tags pure)
  (subsigs (proc (lambda (key value state) *))))
 ((name . hash-table-fold)
  (signature lambda ((hash-table? hash-table) (procedure? proc) seed) *)
  (tags pure deprecated)
  (subsigs (proc (lambda (key value state) *))))
 ((name . hash-table-prune!)
  (signature lambda ((procedure? proc) (hash-table? hash-table)) undefined)
  (subsigs (proc (lambda (key value) boolean?))))
 ((name . hash-table-copy)
  (signature lambda ((hash-table? hash-table)) hash-table?)
  (tags pure))
 ((name . hash-table-copy)
  (signature lambda ((hash-table? hash-table) (boolean? mutable)) hash-table?)
  (tags pure))
 ((name . hash-table-empty-copy)
  (signature lambda ((hash-table? hash-table)) hash-table?)
  (tags pure))
 ((name . hash-table->alist)
  (signature lambda ((hash-table? hash-table)) list?))
 ((name . hash-table-union!)
  (signature
   lambda
   ((hash-table? hash-table1) (hash-table? hash-table2))
   hash-table?))
 ((name . hash-table-merge!)
  (signature
   lambda
   ((hash-table? hash-table1) (hash-table? hash-table2))
   hash-table?)
  (tags deprecated))
 ((name . hash-table-intersection!)
  (signature
   lambda
   ((hash-table? hash-table1) (hash-table? hash-table2))
   hash-table?))
 ((name . hash-table-difference!)
  (signature
   lambda
   ((hash-table? hash-table1) (hash-table? hash-table2))
   hash-table?))
 ((name . hash-table-xor!)
  (signature
   lambda
   ((hash-table? hash-table1) (hash-table? hash-table2))
   hash-table?))
 ((name . hash) (signature lambda (obj) integer?) (tags deprecated))
 ((name . hash) (signature lambda (obj arg) integer?) (tags deprecated))
 ((name . string-hash)
  (signature lambda ((string? str)) integer?)
  (tags pure deprecated))
 ((name . string-hash)
  (signature lambda ((string? str) arg) integer?)
  (tags pure deprecated))
 ((name . string-ci-hash)
  (signature lambda ((string? str)) integer?)
  (tags pure deprecated))
 ((name . string-ci-hash)
  (signature lambda ((string? str) arg) integer?)
  (tags pure deprecated))
 ((name . hash-by-identity)
  (signature lambda (obj) integer?)
  (tags pure deprecated))
 ((name . hash-by-identity)
  (signature lambda (obj arg) integer?)
  (tags pure deprecated))
 ((name . hash-table-equivalence-function)
  (signature lambda ((hash-table? hash-table)) procedure?)
  (tags pure deprecated)
  (subsigs (return (lambda (a b) boolean?))))
 ((name . hash-table-hash-function)
  (signature lambda ((hash-table? hash-table)) procedure?)
  (tags pure deprecated)
  (subsigs (return (lambda (obj) integer?)))))
