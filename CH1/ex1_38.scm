(define (cont-frac n d k)
	(define (iter x result)
		(if (= x 0) result
			(iter (- x 1) (/ (n x) (+ (d x) result)))))
	(iter k 0))
  
(define (divisible? n x)
  (zero? (remainder n x)))

(define (cool x) 
	(if (divisible? (+ x 1) 3) (* 2 (/ (+ x 1) 3))
		1))
    
(cont-frac (lambda (i) 1.0)
           cool
           k)
