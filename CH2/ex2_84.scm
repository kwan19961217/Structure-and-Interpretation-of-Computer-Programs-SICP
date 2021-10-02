(define (apply-generic op . args)
  (let ((type-tags (map type-tag args)))
        (let ((proc (get op type-tags)))
              (if proc
                 (apply proc (map contents args))
                 (apply-coer-list args))))

  (define (apply-coer-list list)
          (if (null? args)
              (error "no such method")
              (let ((list-length (map (lambda (x) (length (memq x tower)))))
                    (let ((highest-common-type (nth list 
                                                    (- (length list)
                                                       (min list-length))))
                          (let ((same-type-list (map (lambda (x) (raise x highest-common-type tower)) list))
                                (let ((proc (get op (map type-tag same-type-list)))
                                      (if proc
                                          (apply proc (map contents same-type-list))))))))))))))                             


(define tower '(integer rational real complex))

(define (nth lst counter)
  (cond ((null? lst) (error 'nth "index out of bounds"))
        ((= counter 0) (car lst))
        (else (nth (cdr lst) (- counter 1)))))
