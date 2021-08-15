;a
(define (left-branch mobile)
        (car mobile))
(define (right-branch mobile)
        (car (cdr mobile)))
(define (branch-length br)
        (car br))
(define (branch-structure br)
        (car (cdr br)))

;b
(define (total-weight mobile)
        (define (weight br)
                (if (not (pair? (branch-structure br)))
                	(branch-structure br)
                	(total-weight (branch-structure br))
                ))
        (+ (weight (left-branch mobile)) (weight (right-branch mobile))))
