;General Function
(define (filtered-accumulate filter combiner null-value term a next b)
	(define (recur term a next b)
		(if (> a b)
      		null-value
      		(if (filter a) 
      			(combiner (term a) 
      					  (recur term (next a) next b))
      			(recur term (next a) next b))))
	(recur term a next b))



;a using answer in ex1_28
(define (sum-of-square-of-primes a b) (filtered-accumulate prime-test + 0 square a add-one b))

;b
(define (product-of-relative-primes n)
	    (define (filter x)
	    	    (= (gcd n x) 1))
	    (filtered-accumulate filter * 1 iden 1 add-one n))

;misc.
(define (add-one x) (+ x 1))
(define (iden x) x)
(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))
