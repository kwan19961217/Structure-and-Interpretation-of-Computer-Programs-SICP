(define (* b n)
	(cond ((= n 0) 0)
	      ((even? n) (double (* b (halve n))))
        (else (+ b (* b (- n 1))))))

(define (halve a)
	(/ a 2))

(define (double a)
	(+ a a))

(define (even? n)
	(= (remainder n 2) 0))
  
