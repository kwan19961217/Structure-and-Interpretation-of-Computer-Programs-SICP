(define (encode-symbol symbol tree)
        ;check if the current node is a leaf
        ;if yes, then the symbol and the current node is not our symbol, return error
        (cond ((and (leaf? tree)
                    (not (eq? symbol (car (symbols tree)))))
               (error "not in tree"))
               ((and (leaf? tree)
                     (eq? symbol (car (symbols tree))))
                ;return empty list if the current node is our symbol
                '())
              ;go to the left tree if our symbol is in the left branch, add 0 to the encoding
               ((element-of-set? symbol (symbols (left-branch tree)))
                (cons 0 (encode-symbol symbol (left-branch tree))))
              ;go to the right tree otherwise, add 1 to the encoding
               (else (cons 1 (encode-symbol symbol (right-branch tree)))))))


;lib used 
(define (element-of-set? x set)
  (cond ((null? set) false)
        ((equal? x (car set)) true)
        (else (element-of-set? x (cdr set)))))
