(((name . &i/o)
  (signature value record-type-descriptor?))
 ((name . make-i/o-error)
  (signature lambda () i/o-error?)
  (tags pure))
 ((name . i/o-error?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (supertypes error?))
 ((name . &i/o-read)
  (signature value record-type-descriptor?))
 ((name . make-i/o-read-error)
  (signature lambda () i/o-read-error?)
  (tags pure))
 ((name . i/o-read-error?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (supertypes i/o-error?))
 ((name . &i/o-write)
  (signature value record-type-descriptor?))
 ((name . make-i/o-write-error)
  (signature lambda () i/o-write-error?)
  (tags pure))
 ((name . i/o-write-error?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (supertypes i/o-error?))
 ((name . &i/o-invalid-position)
  (signature value record-type-descriptor?))
 ((name . make-i/o-invalid-position-error)
  (signature lambda (position) i/o-invalid-position-error?)
  (tags pure))
 ((name . i/o-invalid-position-error?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (supertypes i/o-error?))
 ((name . i/o-error-position)
  (signature lambda ((i/o-invalid-position-error? condition)) *)
  (tags pure))
 ((name . &i/o-filename)
  (signature value record-type-descriptor?))
 ((name . make-i/o-filename-error)
  (signature lambda (filename) i/o-filename-error?)
  (tags pure))
 ((name . i/o-filename-error?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (supertypes i/o-error?))
 ((name . i/o-error-filename)
  (signature lambda ((i/o-filename-error? condition)) *)
  (tags pure))
 ((name . &i/o-file-protection)
  (signature value record-type-descriptor?))
 ((name . make-i/o-file-protection-error)
  (signature lambda (file) i/o-file-protection-error?)
  (tags pure))
 ((name . i/o-file-protection-error?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (supertypes i/o-filename-error?))
 ((name . &i/o-file-is-read-only)
  (signature value record-type-descriptor?))
 ((name . make-i/o-file-is-read-only-error)
  (signature lambda (file) i/o-file-is-read-only-error?)
  (tags pure))
 ((name . i/o-file-is-read-only-error?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (supertypes i/o-file-protection-error?))
 ((name . &i/o-file-already-exists)
  (signature value record-type-descriptor?))
 ((name . make-i/o-file-already-exists-error)
  (signature lambda (file) i/o-file-already-exists-error?)
  (tags pure))
 ((name . i/o-file-already-exists-error?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (supertypes i/o-filename-error?))
 ((name . &i/o-file-does-not-exist)
  (signature value record-type-descriptor?))
 ((name . make-i/o-file-does-not-exist-error)
  (signature lambda (file) i/o-file-does-not-exist-error?)
  (tags pure))
 ((name . i/o-file-does-not-exist-error?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (supertypes i/o-filename-error?))
 ((name . &i/o-port)
  (signature value record-type-descriptor?))
 ((name . make-i/o-port-error)
  (signature lambda ((port? port)) i/o-port-error?)
  (tags pure))
 ((name . i/o-port-error?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (supertypes i/o-error?))
 ((name . i/o-error-port)
  (signature lambda ((i/o-port-error? condition)) port?)
  (tags pure))
 ((name . eof-object) (signature lambda () eof-object?) (tags pure))
 ((name . eof-object?) (signature lambda (obj) boolean?) (tags pure predicate))
 ((name . call-with-input-file)
  (signature lambda ((string? string) (procedure? proc)) *)
  (subsigs (proc (lambda ((input-port? port)) *))))
 ((name . call-with-output-file)
  (signature lambda ((string? string) (procedure? proc)) *)
  (subsigs (proc (lambda ((output-port? port)) *))))
 ((name . input-port?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (subsigs)
  (supertypes port?))
 ((name . output-port?)
  (signature lambda (obj) boolean?)
  (tags pure predicate)
  (subsigs)
  (supertypes port?))
 ((name . current-error-port)
  (signature lambda () output-port?))
 ((name . current-input-port)
  (signature lambda () input-port?))
 ((name . current-output-port)
  (signature lambda () output-port?))
 ((name . with-input-from-file)
  (signature lambda ((string? string) (procedure? thunk)) *)
  (subsigs (thunk (lambda () *))))
 ((name . with-output-to-file)
  (signature lambda ((string? string) (procedure? thunk)) *)
  (subsigs (thunk (lambda () *))))
 ((name . open-input-file) (signature lambda ((string? string)) input-port?))
 ((name . open-output-file) (signature lambda ((string? string)) output-port?))
 ((name . read-char)
  (signature lambda () (or eof-object? char?)))
 ((name . read-char)
  (signature lambda ((input-port? port)) (or eof-object? char?)))
 ((name . peek-char)
  (signature lambda () (or eof-object? char?)))
 ((name . peek-char)
  (signature lambda ((input-port? port)) (or eof-object? char?)))
 ((name . read) (signature lambda () *))
 ((name . read) (signature lambda ((input-port? port)) *))
 ((name . write-char)
  (signature lambda ((char? char)) undefined))
 ((name . write-char)
  (signature lambda ((char? char) (output-port? port)) undefined))
 ((name . newline) (signature lambda () undefined))
 ((name . newline) (signature lambda ((output-port? port)) undefined))
 ((name . display) (signature lambda (obj) undefined))
 ((name . display) (signature lambda (obj (output-port? port)) undefined))
 ((name . write) 
  (signature lambda (obj) undefined))
 ((name . write) (signature lambda (obj (output-port? port)) undefined)))
