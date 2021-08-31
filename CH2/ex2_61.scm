(define (adjoin-set set x)
    (define (process set x)
                (if (< (car set) x)
                    (cons (car set) (process (cdr set) x))
                    (cons x set)))
        (if (element-of-set? x set)	
            set
            (process set x)))

(define (adjoin-set set x)
        (cond ((= (car set) x) set)
              ((> (car set) x) (cons x set))
              (else (cons (car set) (adjoin-set (cdr set) x))))) 
