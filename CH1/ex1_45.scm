(define (nth-root n x)
	(fixed-point ((repeated average-damp (num-of-average n)) (lambda (y) (/ x (expt y (- n 1)))))
               1.0))

(define (num-of-average n)
		(define (iter n result)
			(if (= n 1) result
				(iter (quotient n 2) (+ result 1))))
		(iter n 0))
