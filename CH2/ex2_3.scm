(define (perimeter-rect rect)
		(* (+ (height rect)
			  (width rect))
			2))

(define (area-rect rect)
		(* (height rect)
			(width rect)))

;Represent by Four Points of the rectangle
(define (make-rect bottom-left top-right)
		(cons (make-segment bottom-left
			  		(make-point (x-point bottom-left)
			  			  		(y-point top-right)))
			  (make-segment top-right
			  		(make-point (x-point top-right)
			  			  		(y-point bottom-left)))))
;Represent by the bottom horizontal line and the right vertical line

(define (make-rect h v)
		(cons h v))

(define (h bottom-left bottom-right) 
           (make-segment bottom-left bottom-right))

(define (v top-right bottom-right)
           (make-segment top-right bottom-right))

;misc.
(define (x1 rect)
		(car (car (car rect))))

(define (y1 rect)
		(cdr (car (car rect))))

(define (x2 rect)
		(car (car (cdr rect))))

(define (y2 rect)
		(cdr (car (cdr rect))))


;From 2.2
(define (make-segment a b) 
		(cons a b)) 

(define (make-point x y)
		(cons x y))

(define (x-point pt)
		(car pt))

(define (y-point pt)
		(cdr pt))
