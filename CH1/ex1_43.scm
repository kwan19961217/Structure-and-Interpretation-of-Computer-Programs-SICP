(define (repeated f num)
	(define (repeat-recur num)
			(if (= num 1) (lambda (x) (f x))
				(compose f (repeat-recur (- num 1)))))
	(repeat-recur num))

;1.42
(define (compose f g)
	(lambda (x)
	(f (g x))))
