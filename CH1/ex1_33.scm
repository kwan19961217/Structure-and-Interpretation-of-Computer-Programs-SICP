(define (filtered-accumulate filter combiner null-value term a next b)
	(define (recur term a next b)
		(if (> a b)
      		null-value
      		(if (filter a) 
      			(combiner (term a) 
      					  (recur term (next a) next b))
      			(recur term (next a) next b))))
	(recur term a next b))

;a
(filtered-accumulate prime-test + 0 square 2 add-one 10)
