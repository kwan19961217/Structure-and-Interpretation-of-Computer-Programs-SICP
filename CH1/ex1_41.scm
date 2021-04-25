(define (double g) 
	(lambda (x)
	(g (g x))))

;(((double (double double)) inc) 5) returns 21
