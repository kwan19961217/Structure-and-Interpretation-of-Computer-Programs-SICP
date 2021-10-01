；2.83
;integer->rational
(define (integer->rational int)
      (make-rational (contents int) 1))

;rational->real
(define (rational->real rat)
      (tag 'real (* 1.0 (/ (numer (contents rat))
                           (denom (contents rat))))))
;real->complex
(define (real->complex real)
      (make-from-real-imag (contents real 0)))


(put-coercion 'integer 'rational integer->rational)
(put-coercion 'rational 'real integer->rational)
(put-coercion 'real 'complex integer->rational)

(define (raise val type tower)
      (if (null? tower)
          (error "cannot convert")
          (let ((proc (get-coercion (type-tag val) type))
                (if proc
                    (proc val)
                    (let ((next (get-coercion (type-tag val) (cadr tower)))
                      (raise (next val) type (cdr tower)))))))))
