(define (reverse ls)
		(define (rev-iter result i)
				(if (or (> i 0) (= i 0))
                (rev-iter (append result (list (list-ref ls i))) (- i 1))
                result)
				)

        (let ((l (- (length ls) 2)) (f (last-pair ls)))
        	 (rev-iter f l)
        )      
)


;lib
(define (last-pair ls)
        (if (null? (cdr ls))
            (car (list ls))
            (last-pair (cdr ls))
        )
)

(define (length items)
  (if (null? items)
      0
      (+ 1 (length (cdr items)))))

(define (list-ref items n)
  (if (= n 0)
      (car items)
      (list-ref (cdr items) (- n 1))))
