(define (fringe ls)
        (if (not (pair? ls))
            (list ls)
            (append (fringe (car ls)) (fringe (car (cdr ls))))))
