(((name . display) (signature lambda (obj) undefined) (parameterized-by "(scheme base) current-output-port"))
 ((name . display) (signature lambda (obj (output-port? port)) undefined))
 ((name . write) 
  (signature lambda (obj) undefined)
  (tags)
  (parameterized-by "(scheme base) current-output-port"))
 ((name . write) (signature lambda (obj (output-port? port)) undefined))
 ((name . write-shared)
  (signature lambda (obj) undefined)
  (parameterized-by "(scheme base) current-output-port"))
 ((name . write-shared) (signature lambda (obj (output-port? port)) undefined))
 ((name . write-simple)
  (signature lambda (obj) undefined)
  (parameterized-by "(scheme base) current-output-port"))
 ((name . write-simple)
  (signature lambda (obj (output-port? port)) undefined)))
