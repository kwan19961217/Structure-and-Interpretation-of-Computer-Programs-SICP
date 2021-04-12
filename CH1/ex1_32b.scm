;recursive
(define (accumulate combiner null-value term a next b)
	(define (recur term a next b)
		(if (> a b)
      		null-value
      		(combiner (term a)
         				(recur term (next a) next b))))
	(recur term a next b))

;sum 
(accumulate + 0 term a next b)

;product
(accumulate * 1 term a next b)
