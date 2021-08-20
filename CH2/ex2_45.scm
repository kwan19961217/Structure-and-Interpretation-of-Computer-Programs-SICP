(define (split main sub)
        (lambda (painter n)
                (if (= n 0)
                     painter
                     (let ((smaller ((split main sub) painter (- n 1))))
                           (below painter (beside smaller smaller))))))
