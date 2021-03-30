(define (fast-iter b n a)
		  (cond ((= n 1) (+ b a))
		  ((even? n) (fast-iter (double b)
					                  (halve n)
					                  a))
		  (else (fast-iter b 
                       (- n 1) 
                       (+ a b)))))

(define (halve a)
		    (/ a 2))

(define (double a)
		    (+ a a))

(define (even? n)
		    (= (remainder n 2) 0))
