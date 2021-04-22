;recursive
(define (cont-frac n d k)
	(define (rec x)
		(if (= k x) 1
			(/ (n x) (+ (d x) (rec (+ x 1))))))
	(rec 1))
;k need to be at least 10

;iterative
(define (cont-frac n d k)

(cont-frac (lambda (i) 1.0)
           (lambda (i) 1.0)
           k)

(define (cont-frac n d k)
	(define (iter x result)
		(if (= x 0) result
			(iter (- x 1) (/ (n x) (+ (d x) result)))))
	(iter k 0))
