(define (count-leaves t)
  (accumulate + 0 (map (lambda (sub-tree)
                               (if (not (pair? sub-tree))
                                   1 
                                   (length sub-tree)))
                       t)))
