(define (next test-number)
		(if (= test-number 2) 3
			(+ test-number 2)))

;change (+ 1 test-divisor to next test-divisor)

(define (smallest-divisor n)
  (find-divisor n 2))
(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (next test-divisor)))))
(define (divides? a b)
  (= (remainder b a) 0))







; same as ex1_22
(define (search-for-primes n) 
	(if (= (remainder n 2) 0)
		(prime-iter (+ n 1) 0)
		(prime-iter n 0)))

	(define (prime-iter n count)
		(cond ((= count 3) True)
		 	  ((prime? n) (prime-iter (+ n 2) (+ count 1)))
			  (else (prime-iter (+ n 2) count))))



	
(define (prime? n)
  	(= n (smallest-divisor n)))
  
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
