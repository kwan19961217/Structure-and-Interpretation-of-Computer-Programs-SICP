(define (same-parity init . ls)
        (if (even? init)
            (even-iter (list) ls)
            (odd-iter (list) ls)))

(define (even-iter result lss)
        (if (null? lss)
            result
            (if (even? (car lss))
                (even-iter (append result (list (car lss))) (cdr lss))
                (even-iter result (cdr lss)))))

(define (odd-iter result lss)
        (if (null? lss)
            result
            (if (even? (car lss))
                (odd-iter result (cdr lss))
                (odd-iter (append result (list (car lss))) (cdr lss)))))

(define (even? x)
		(= (modulo x 2) 0))
