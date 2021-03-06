#|
    Module for reading settings values
|#
(define-library
  (scmindex settings)
  (import (scheme base)
          (scheme read)
          (srfi 26)
          (arvyy kawa-spark))
  (export
    deploy-setting/port
    deploy-setting/spec-index
    deploy-setting/solr-embed
    deploy-setting/solr-home
    deploy-setting/solr-url
    deploy-setting/solr-core
    deploy-setting/cache-templates
    deploy-setting/page-size
    deploy-setting/serve-static
    deploy-setting/filterset-index
    deploy-setting/sqlite-location
    )

  (begin

    (define (get-property deploy-settings prop default-value)
      (cond
        ((assoc prop deploy-settings) => cdr)
        (else default-value)))

    (define deploy-setting/port (cut get-property <> 'port 8080))
    (define deploy-setting/spec-index (cut get-property <> 'spec-index "types/index.scm"))
    (define deploy-setting/solr-embed (cut get-property <> 'solr-embed #t))
    (define deploy-setting/solr-home (cut get-property <> 'solr-home "./solrhome"))
    (define deploy-setting/solr-url (cut get-property <> 'solr-url "http://localhost:8983/solr"))
    (define deploy-setting/solr-core (cut get-property <> 'solr-core "scmindex"))
    (define deploy-setting/cache-templates (cut get-property <> 'cache-templates #t))
    (define deploy-setting/page-size (cut get-property <> 'page-size 40))
    (define deploy-setting/serve-static (cut get-property <> 'serve-static #t))
    (define deploy-setting/filterset-index (cut get-property <> 'filterset-index "filters/index.scm"))
    (define deploy-setting/sqlite-location (cut get-property <> 'sqlite-data "sqlitedb"))


))
