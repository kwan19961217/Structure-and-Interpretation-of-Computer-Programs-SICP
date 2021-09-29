(define (equ? x y)
        (apply-generic 'equ? x y))

;scheme-number
(define (equ? x y)
        (= x y))

;rational-number
(define (equ? x y)
        (let (new-x (make-rat (numer x)
                              (denom x)))
             (new-y (make-rat (numer y)
                              (denom y)))
             (and (= (numer new-x)
                     (numer new-y))
                  (= (denom new-x)
                     (denom new-y)))))

;complex-number
(define (equ? x y)
        (and (= (real-part x)
                (real-part y))
             (= (img-part x)
                (img-part y))))
