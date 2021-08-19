(define (queens board-size)
  (define (queen-cols k)  
    (if (= k 0)
        (list empty-board)
        (filter
         (lambda (positions) (safe? k positions))
         (flatmap
          (lambda (rest-of-queens)
            (map (lambda (new-row)
                   (adjoin-position new-row k rest-of-queens))
                 (enumerate-interval 1 board-size)))
          (queen-cols (- k 1))))))
  (queen-cols board-size))



;helper
;Presenting the tables with coordinates
(define (adjoin-position row col remain)
        (append (list (cons row col)) remain))

;check diagonals and rows
;no need to check for columns as the functions construct the tables by appending each columns
;thus no columns will be repeated naturally
(define (safe? col positions)
        (if (not (pair? (cdr positions)))
            #t
            (and (check-row (car (car positions))
                            (map (lambda (x) (car x))
                                 (cdr positions)))
                 (check-diagonal (car positions) (cdr positions))
                            )))


(define (check-row target rows)
		(not (pair? (filter (lambda (x) (= x target)) 
		                     rows))))


(define (check-diagonal target positions)
		(not (pair? (filter (lambda (x) (= (car x) 
		                                   (cdr x)))
                            (map (lambda (p) (cons (abs (- (car target) (car p)))
                                                   (abs (- (cdr target) (cdr p)))))
                                 positions)))))
