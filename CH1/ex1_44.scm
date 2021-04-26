(define (smoothed f)
		(lambda (x) (/ (+ (f (- x dx))
					   	  (f x)
					      (f (+ x dx)))
					   3)))

(define dx 0.00001)


(define (n-fold-smoothed f n)
		(repeated smoothed n) f)
