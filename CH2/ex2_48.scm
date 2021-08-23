(define (make-segment vec1 vec2)
        (cons vec1 vec2))

(define (start-seg segment)
        (car segment))

(define (end-seg segment)
        (cdr segment))   
