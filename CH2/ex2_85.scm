(define (apply-generic op . args)
  (let ((type-tags (map type-tag args)))
        (let ((proc (get op type-tags)))
              (if proc
                 ;add drop here to simplify output
                 (drop (apply proc (map contents args)))
                 (apply-coer-list args))))
  
  
;project package
(define install-project-package
  (define (project-complex->real val)
          (tag 'real (real-part val)))

  (define (project-rational->integer val)
          (numer val))

  (define (project-real->integer val)
          (round (contents val)))
  
  (put 'project 'complex (lambda (x) (project-complex->real x)))
  (put 'project 'real (lambda (x) (project-real->integer x)))
  (put 'project 'rational (lambda (x) (project-rational->integer x))))

(define (drop val)
        (let ((proc (get 'project (type-tag val)))
              (if proc
                  (let ((dropped (apply proc val))
                        (if (equ? dropped (raise dropped (type-tag val) tower))
                            (drop dropped)
                            val))
                  val)))))
