  (define (iterative-improve good-enough? next)
	        (define (iter guess)  
	                (if (good-enough? guess (next guess x)) guess
		              (iter (next guess x))))
	        (lambda (guess) (iter guess)))
  
  
  ;sqrt
  (define (sqrt x)

	        (define (iterative-improve good-enough? next)
		              (define (iter guess)  
				                  (if (good-enough? guess (next guess)) guess
				                      (iter (next guess))))
		              (lambda (guess) (iter guess)))

	        (define (improve-guess guess)
  		            (average guess (/ x guess)))

	        ((iterative-improve close-enough? improve-guess) 1.0))
  
;fixed-point
(define (fixed-point f x) 
	      (define (iterative-improve good-enough? next)
		            (define (iter guess)  
				                (if (good-enough? guess (next guess)) guess
				                (iter (next guess))))
		            (lambda (guess) (iter guess)))

	      (define (fixed-next guess)
			          (f guess))

	      ((iterative-improve close-enough? fixed-next) 1.0))
