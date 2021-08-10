(define (no-more? ls)
		(null? ls)
)

(define (except-first-denomination ls)
        (cdr ls)
)

(define (first-denomination ls)
        (car ls)
)
