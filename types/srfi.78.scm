(((name . check)
  (signature syntax-rules (=>)
             ((_ expr (=> equal) expected))
             ((_ expr => expected)))
  (syntax-param-signatures
    (equal procedure?)))
 ((name . check-ec)
  (signature syntax-rules (=>)
             ((_ qualifier ... expr (=> equal) expected (argument ...)))
             ((_ qualifier ... expr => expected (argument ...)))
             ((_ qualifier ... expr (=> equal) expected))
             ((_ qualifier ... expr => expected)))
  (subsigs
    (qualifier
      generator
      (if test)
      (not test)
      (and test ...)
      (or test ...)
      (begin command ... expression)
      (nested qualifier ...)))
  (syntax-param-signatures
    (equal procedure?)
    (generator generator-macro)))
 ((name . check-report)
  (signature lambda () undefined))
 ((name . check-reset!)
  (signature lambda () undefined))
 ((name . check-passed?)
  (signature lambda ((integer? expected-total-count)) boolean?)))
