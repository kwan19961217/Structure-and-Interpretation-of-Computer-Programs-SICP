(define (adjoin set elem)
        (append set (list elem)))

(define (union-set set1 set2)
        (append set1 set2))

(define (intersection-set set1 set2)
  (cond ((or (null? set1) (null? set2)) '())
        ((element-of-set? (car set1) set2)        
         (cons (car set1)
               (intersection-set (cdr set1) (remove-element set2 (car set1)))))
        (else (intersection-set (cdr set1) set2))))

(define (remove-element set x)
        (if (= (car set) x) 
            (cdr set)
            (cons (car set) (remove-element (cdr set) x))))
