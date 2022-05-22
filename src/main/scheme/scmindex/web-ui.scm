(define-library
    (scmindex web-ui)
    (import
      (scheme base)
      (scheme write)
      (scheme read)
      (scheme file)
      (arvyy kawa-spark)
      (arvyy mustache)
      (arvyy solr-embedded)
      (arvyy solrj)
      (scmindex types-parser)
      (scmindex mustache)
      (scmindex solr)
      (scmindex settings)
      (srfi 180))
    (export init-web-ui)
    (begin

        (define (init-web-ui config solr-client solr-core)
(define (partial-locator name)
  (open-input-file (string-append "templates/" name ".html")))

(define get-template/cached
  (let ((cache '()))
    (lambda (name)
      (cond
        ((assoc name cache) => cdr)
        (else (let ((tpl (compile name partial-locator)))
                (set! cache (cons (cons name tpl) cache))
                tpl))))))

(define (get-template/uncached name)
  (compile name partial-locator))

(define get-template
  (if (deploy-setting/cache-templates config)
    get-template/cached
    get-template/uncached))

(define (get/html path handler)
  (get path (lambda (req resp)
              (define-values (name data) (handler req resp))
              (parameterize ((current-lookup data-lookup)
                             (current-collection list-collection))
                (execute (get-template name) data)))))

(define (get/rest path handler)
  (get path (lambda (req resp)
              (define result (handler req resp))
              (define type-param (req/query-param req "wt"))
              (define keep-sexpr (equal? "sexpr" type-param))
              (define payload (open-output-string))
              (if keep-sexpr
                (begin
                  (write result payload)
                  (resp/set-type! resp "application/sexpr"))
                (begin
                  (json-write result payload)
                  (resp/set-type! resp "application/json")))
              (resp/set-header! resp "Access-Control-Allow-Origin" "*")
              (get-output-string payload))))

(define (make-tpl-getter name)
  (if (deploy-setting/cache-templates config)
      (let ((tpl (compile name partial-locator)))
       (lambda () tpl))
      (lambda () (compile name partial-locator))))

(define solr-url (string-append (deploy-setting/solr-url config) "/solr/" (deploy-setting/solr-core config)))
(define solr-search-url (string-append solr-url "/search"))
(define solr-suggest-url (string-append solr-url "/suggest"))
(define default-page-size (deploy-setting/page-size config))

(define (make-head-data req)
  `((light-theme . ,(user-setting/light-theme? req))
    (ctrlf-override . ,(user-setting/ctrl-f-override req))))

(port (deploy-setting/port config))

(when (deploy-setting/serve-static config)
  (static-files/external-location "static"))

(get/html "/"
          (lambda (req resp)
            (render-home-page req)))

(get/html "/settings"
     (lambda (req resp)
       (render-settings-page req)))

(post "/settings"
      (lambda (req resp)
        (for-each
          (lambda (opt)
            (define value (req/query-param req opt))
            (if value
                (resp/set-cookie! resp opt value)
                (resp/remove-cookie! resp opt)))
          settings-cookies)
        (resp/redirect resp "/settings")))

(get/html "/search"
     (lambda (req resp)
       (define page-size (user-setting/page-size req))
       (define filter-params-loose?  (user-setting/param-filter-loose req))
       (define page (let ((value (req/query-param req "page")))
                      (if value
                          (string->number value)
                          1)))
       (define start (* page-size (- page 1)))
       (define query (req/query-param req "query"))
       (define libs (req/query-param-values req "lib"))
       (define param-types (or (req/query-param-values req "param") '()))
       (define return-types (or (req/query-param-values req "return") '()))
       (define tags (or (req/query-param-values req "tag") '()))
       (define data (exec-solr-query solr-client solr-core start page-size query libs param-types return-types tags filter-params-loose?))
       (render-search-page req page page-size query libs tags param-types return-types data)))

(get/rest "/suggest"
     (lambda (req resp)
       (define text (req/query-param req "text"))
       (solr-get-suggestions solr-client solr-core text)))

(path "/rest"
      (get/rest "/libs"
           (lambda (req resp)
             (solr-facet-values solr-client solr-core 'lib)))

      (get/rest "/params"
           (lambda (req resp)
             (solr-facet-values solr-client solr-core 'param_types)))

      (get/rest "/returns"
           (lambda (req resp)
             (solr-facet-values solr-client solr-core 'return_types)))

      (get/rest "/tags"
           (lambda (req resp)
             (solr-facet-values solr-client solr-core 'tags)))

      (get/rest "/procedures"
           (lambda (req resp)
             (define start (or (req/query-param req "start") 0))
             (define rows (or (req/query-param req "rows") default-page-size))
             (define query (req/query-param req "query"))
             (define libs (req/query-param-values req "lib"))
             (define param-types (or (req/query-param-values req "param") '()))
             (define return-types (or (req/query-param-values req "return") '()))
             (define tags (or (req/query-param-values req "tag") '()))
             (define filter-params-loose? (equal? (or (req/query-param req "filter_loose") "true") "true"))
             (exec-solr-query solr-client solr-core start rows query libs param-types return-types tags filter-params-loose?))))
        )


    ))
