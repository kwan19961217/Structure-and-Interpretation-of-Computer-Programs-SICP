(define (cont-frac n d k)
	(define (iter x result)
		(if (= x 0) result
			(iter (- x 1) (/ (n x) (+ (d x) result)))))
	(iter k 0))

(define (tan-cf x k)
	(cont-frac (lambda (i) (if (= i 1) x (- (square x))))
			   (lambda (i) (- (* 2 i) 1))
			   k))
