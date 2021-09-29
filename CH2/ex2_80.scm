(define (=zero? x)
        (apply-generic '=zero? x))

;scheme-number
(define (=zero? x)
        (= 0 x))

;rational-number
(define (=zero? x)
        (and (= (numer x) 0)
             (= (denom x) 0)))

;complex-number
(define (=zero? x)
        (and (= (real-part x) 0)
             (= (img-part x) 0)))
