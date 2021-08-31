(define (deriv exp var)
  (cond ((number? exp) 0)
        ((variable? exp)
         (if (same-variable? exp var) 1 0))
        ((sum? exp)
         (make-sum (deriv (addend exp) var)
                   (deriv (augend exp) var)))
        ((product? exp)
         (make-sum
           (make-product (multiplier exp)
                         (deriv (multiplicand exp) var))
           (make-product (deriv (multiplier exp) var)
                         (multiplicand exp))))
        ;exponentiation handling starts here
        ((exponentiation? exp)
         (make-product (make-product (exponent exp)
                                     (make-exponentiation (base exp)
                                                          (- (exponent exp) 1)))
                       (deriv (base exp) var)))
        ;end
        (else
         (error "unknown expression type -- DERIV" exp))))



(define (exponentiation? x)
        (and (pair? x) (eq? (car x) '**)))

(define (exponent x)
        (caddr x))

(define (base x)
        (cadr x))

(define (make-exponentiation x p)
		(cond ((= p 0) 1)
		      ((= p 1) x)
              (else (list '** x p))))
