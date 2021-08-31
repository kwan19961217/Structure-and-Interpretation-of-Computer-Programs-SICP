;a
(define (make-sum a1 a2) (list a1 '+ a2))

(define (make-product m1 m2) (list m1 '* m2))

(define (sum? x)
  (and (pair? x) (eq? (cadr x) '+)))


(define (addend s) (car s))
(define (augend s) (caddr s))

(define (product? x)
  (and (pair? x) (eq? (cadr x) '*)))

(define (multiplier p) (car p))
(define (multiplicand p) (caddr p))

;b
(define (sum? x)
        (cond ((not (pair? x)) #f)
              ((null? x) #f)
              ((eq? (car x) '+) #t)
              (else (sum? (cdr x)))))

(define (addend x)
        (if (eq? (car x) '+)
            (list)
            (cons (car x) (addend (cdr x)))))

(define (augend x)
        (if (eq? (car x) '+)
            (cdr x)
            (augend (cdr x))))


(define (product? x)
        (cond ((not (pair? x)) #f)
              ((null? x) #f)
              ((eq? (car x) '*) #t)
              (else (product? (cdr x)))))

(define (multiplier x)
        (if (eq? (car x) '*)
            (list)
            (cons (car x) (multiplier (cdr x)))))

(define (multiplicand x)
        (if (eq? (car x) '*)
            (cdr x)
            (multiplicand (cdr x))))
