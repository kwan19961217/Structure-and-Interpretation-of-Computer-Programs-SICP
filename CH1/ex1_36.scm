(fixed-point (lambda (x) (/ (log 1000) (log x))) 2.0)

(fixed-point (lambda (x) (/ (+ x (/ (log 1000) (log x))) 2)) 2.0)


(define tolerance 0.00001)
(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
  	(newline)
    (let ((next (f guess)))
      (display next)
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))
