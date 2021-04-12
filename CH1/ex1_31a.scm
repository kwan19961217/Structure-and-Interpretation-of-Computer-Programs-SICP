; product function
(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
         (product term (next a) next b))))

; factorial
(define (factorial n) 
		(product iden 1 plus-one n))

(define (plus-one x) (+ x 1))

(define (iden x) x) 


; approximated pi, recursive process
(define (term-for-pi x)
		(/ (* x
			  (+ x 2))
			(square (+ x 1))))

(define (square x) 
		(* x x))

(define (plus-two x)
		(+ x 2))

(define (approx-pi n)
		(product term-for-pi 2 plus-two (- n 2)))
