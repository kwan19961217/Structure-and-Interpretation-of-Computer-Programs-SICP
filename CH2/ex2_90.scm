;sparse package
(define (first-term-sparse term-list)
        (make-term (- (length term-list) 1)
                   (car term-list)))
(define (adjoin-term-sparse term-list)
        (lambda (term)
          (if (=zero? (coeff term))
              (cons 0 term-list)
              (cons (coeff term) term-list))))

(put first-term 'sparse first-term-sparse)
(put adjoin-term 'sparse adjoin-term-sparse)

;dense package
(define (first-term-dense term-list)
        (car term-list))

(define (adjoin-term-dense term-list)
        (lambda (term)
          (if (=zero? (coeff term))
              term-list
              (cons term term-list))))

(put first-term 'dense first-term-dense)
(put adjoin-term 'dense adjoin-term-dense)

;general function
(define (first-term term-list)
        (apply-generic first-term 
                       term-list))
(define (adjoin-term term term-list)
        (apply-generic adjoin-term term-list) term)
