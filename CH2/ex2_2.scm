(define (make-segment a b) 
		(cons a b)) 

(define (start-segment seg) 
		(car seg)) 

(define (end-segment seg) 
		(cdr seg)) 

(define (make-point x y)
		(cons x y))

(define (x-point pt)
		(car pt))

(define (y-point pt)
		(cdr pt))

(define (midpoint-segment seg)
		(make-point (average (x-point (start-segment seg))
						  (x-point (end-segment seg)))
					(average (y-point (start-segment seg))
						  (y-point (end-segment seg)))))

(define (average x y) 
		(/ (+ x y) 
		   2))
