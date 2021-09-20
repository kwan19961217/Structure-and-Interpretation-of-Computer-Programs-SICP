;b
(define (install-sum-deriv-package)
  (define (addend exp)
          (cadr exp))
  (define (augend exp)
          (caddr exp))

  (define (make-sum a1 a2)
          (cond ((=number? a1 0) a2)
                ((=number? a2 0) a1)
                ((and (number? a1) (number? a2)) (+ a1 a2))
               (else (list '+ a1 a2))))

  (define (deriv-sum exp var)
          (make-sum (deriv (addend exp) var)
                    (deriv (augend exp) var)))

  (put 'addend '+ addend)
  (put 'augend '+ augend)
  (put 'deriv '+ deriv-sum))



(define (install-prod-deriv-package)
  (define (multiplier p) (cadr p))

  (define (multiplicand p) (caddr p))

  (define (make-product m1 m2)
          (cond ((or (=number? m1 0) (=number? m2 0)) 0)
                ((=number? m1 1) m2)
                ((=number? m2 1) m1)
                ((and (number? m1) (number? m2)) (* m1 m2))
                (else (list '* m1 m2))))

  (define (make-sum a1 a2)
          (cond ((=number? a1 0) a2)
                ((=number? a2 0) a1)
                ((and (number? a1) (number? a2)) (+ a1 a2))
                (else (list '+ a1 a2))))

  (define (deriv-product m1 m2) (list '* m1 m2)
          (make-sum
                   (make-product (multiplier exp)
                                 (deriv (multiplicand exp) var))
                   (make-product (deriv (multiplier exp) var)
                                       (multiplicand exp))))

  (put 'multiplier '* multiplier)
  (put 'multiplicand '* multiplicand)                                                   
  (put 'deriv '* deriv-product))

;c
(define (install-exp-deriv-package)
  (define (exponent x) (caddr x))
  (define (base x) (cadr x))

  (define (make-product m1 m2)
          (cond ((or (=number? m1 0) (=number? m2 0)) 0)
                ((=number? m1 1) m2)
                ((=number? m2 1) m1)
                ((and (number? m1) (number? m2)) (* m1 m2))
                (else (list '* m1 m2))))

  (define (make-sum a1 a2)
          (cond ((=number? a1 0) a2)
                ((=number? a2 0) a1)
                ((and (number? a1) (number? a2)) (+ a1 a2))
                (else (list '+ a1 a2))))

  (define (make-exponentiation x p)
          (cond ((= p 0) 1)
                ((= p 1) x)
                (else (list '** x p))))

  (define (deriv-exp exp var)
          (make-product (make-product (exponent exp)
                                      (make-exponentiation (base exp)
                                                           (- (exponent exp) 1)))
                        (deriv (base exp) var)))

  (put 'exponent '** exponent)
  (put 'base '** base)                                                   
  (put 'deriv '** deriv-exp))
