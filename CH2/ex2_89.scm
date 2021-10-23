(define (first-term term-list)
        (make-term (- (length term-list) 1)
                   (car term-list)))

(define (adjoin-term term term-list)
  (if (=zero? (coeff term))
      (cons 0 term-list)
      (cons (coeff term) term-list)))
