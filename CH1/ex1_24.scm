(define (search-for-primes n) 
	(if (= (remainder n 2) 0)
		(prime-iter (+ n 1) 0)
		(prime-iter n 0)))

;apply 1000 tests to reduce error
(define (prime-iter n count)
		(newline)
		(display n)
		(cond ((= count 3) True)
		 	  ((fast-prime? n 1000) (prime-iter (+ n 2) (+ count 1)))
			  (else (prime-iter (+ n 2) count))))


	
(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))
(define (start-prime-test n start-time)
  (if (search-for-primes n)
      (report-prime (- (runtime) start-time))))
(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))


(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (square (expmod base (/ exp 2) m))
                    m))
        (else
         (remainder (* base (expmod base (- exp 1) m))
                    m))))  

(define (fast-prime? n times)
  (cond ((= times 0) true)
        ((fermat-test n) (fast-prime? n (- times 1)))
        (else false)))

(define (fermat-test n)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it (+ 1 (random (- n 1)))))
