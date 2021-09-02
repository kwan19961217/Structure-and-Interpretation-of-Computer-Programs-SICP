(define (union-set-tree tree1 tree2)
        (list->tree (union-set (tree->list-2 tree1)
                               (tree->list-2 tree2)))) 

(define (intersection-set-tree tree1 tree2)
        (define (process tree set) 
                (cond ((null? set) '()) 
                       ((element-of-tree? tree (car set))
                        (cons (car set) (process tree (cdr set))))
                       (else (process tree (cdr set)))))
        (process tree1 (tree->list-2 tree2)))


(define (element-of-tree? tree element)
        (cond ((null? tree) #f)
              ((= (car tree) element) #t)
              ((< (car tree) element) (element-of-tree? (caddr tree) element))
              (else (element-of-tree? (cadr tree) element))))
