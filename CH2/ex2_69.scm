;problem
(define (generate-huffman-tree pairs)
  (successive-merge (make-leaf-set pairs)))

;solution
(define (successive-merge leaf-set)
        (if (null? (cdr leaf-set))
            leaf-set
            ;use make-code-tree to combine the first two in the set,
            ;then use adjoin-set to reorder the new set
            (successive-merge (adjoin-set (make-code-tree (car leaf-set)
                                                          (cadr leaf-set))
                                          (cddr leaf-set)))))
