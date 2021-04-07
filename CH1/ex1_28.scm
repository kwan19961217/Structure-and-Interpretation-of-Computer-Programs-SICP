(define (expmod base exp m)
  (cond ((= exp 0) 1)
  		((notrivial? base m) 0)
        ((even? exp) (remainder (square (expmod base 
        										                    (/ exp 2) 
        										                    m))
        						            m))
        (else (remainder (* base 
         			              (expmod base (- exp 1) m))
                         m)))))




(define (fast-prime? n times)
  (cond ((= times 0) true)
        ((miller-rabin-test n) (fast-prime? n (- times 1)))
        (else false)))

(define (miller-rabin-test n)
	(define (try-it a)
    	(= (expmod a (- n 1) n) 1))
	(try-it (+ 1 (random (- n 1)))))

(define (prime-test n) 
		(fast-prime? n 1000))

(define (notrivial? a n)
		(and (not (= a 1))
			   (not (= a (- n 1)))
			   (= 1 (remainder (square a) n))))
