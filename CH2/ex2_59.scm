(define (union-set set1 set2)
        (define (processor s)
                (cond ((null? s) (list))
                      ((element-of-set? (car s) set1) (processor (cdr s)))
                      (else (cons (car s) (processor (cdr s))))))
    (append set1 (processor set2)))