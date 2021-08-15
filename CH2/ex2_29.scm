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

;c
(define (torque br)
        (* (weight br) (branch-length br)))
(define (weight br)
        (if (not (pair? (branch-structure br)))
            (branch-structure br)
            (total-weight (branch-structure br))))

(define (equal? mobile)
        (= (torque (left-branch mobile))
           (torque (right-branch mobile))))

(define (balance? mobile)
        (if (not (pair? mobile))
            #t
            (and (equal? mobile)
                 (balance? (branch-structure (left-branch mobile)))
                 (balance? (branch-structure (right-branch mobile))))))

;d
(define (left-branch mobile)
        (car mobile))
(define (right-branch mobile)
        (cdr mobile))
(define (branch-length br)
        (car br))
(define (branch-structure br)
        (cdr br))
