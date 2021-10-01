;2.82
(define (apply-generic op . args)
  (define (coer-list-type list type)
        (if (null? list)
            '()
            (let ((t1->t2 (get-coercion (type-tag (car list)) type)
                  (if t1->t2
                  (cons (t1->t2 (car list)) (coer-list-type (cdr list) type))
                  (cons (car list) (coer-list-type (cdr list) type)))
                 )))))
  (define (apply-coer-list list)
         (if (null? args)
              (error "no such method")
              (let ((coered-list (coer-list-type args (type-tag (car list))))
                    (let ((proc (get op (map type-tag coered-list)))
                          (if proc
                              (apply proc (map contents coered-list))
                              (apply-coer-list (cdr list)))))))))  
  
  
  (let ((type-tags (map type-tag args)))
    (let ((proc (get op type-tags)))
      (if proc
          (apply proc (map contents args))
          (apply-coer-list args)))))



