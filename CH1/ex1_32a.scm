;iterative
(define (accumulate combiner null-value term a next b)
		(define (iter a result)
				(if (> a b)
        			 result
        			 (iter (next a) (combiner result (term a)))))
  		(iter a null-value))

;sum
(accumulate + 0 term a next b)

;product
(accumulate * 1 term a next b)
