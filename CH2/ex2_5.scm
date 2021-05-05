(define (cons-exp a b)
		(* (expt 2 a) (expt 3 b)))

(define (car-exp product)
	(define (iter product a)
			(if (even? product) (iter (/ product 2) (+ a 1))
				a))
	(iter product 0))
				

(define (cdr-exp product)
	(define (iter product b)
			(cond 	((= product 1) b)
					((even? product) (iter (/ product 2) b))
					(else (iter (/ product 3) (+ b 1)))))
	(iter product 0))
