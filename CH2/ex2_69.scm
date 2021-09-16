;problem
(define (generate-huffman-tree pairs)
  (successive-merge (make-leaf-set pairs)))

;solution
(define (successive-merge leaf-set)
        (if (null? (cdr leaf-set))
            ;car so that the final tree does not have an additional outer braces
            (car leaf-set)
            ;use make-code-tree to combine the first two in the set,
            ;then use adjoin-set to reorder the new set
            (successive-merge (adjoin-set (make-code-tree (car leaf-set)
                                                          (cadr leaf-set))
                                          (cddr leaf-set)))))
