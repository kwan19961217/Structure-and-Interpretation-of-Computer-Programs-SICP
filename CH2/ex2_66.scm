(define (lookup given-key tree)
		(cond ((null? tree) #f)
		      ((equal? given-key (key (car tree))) 
		       (car tree))
          ;Look to the left branch if Key is smaller than the current node
		      ((< given-key (key (car tree)))
		       (lookup given-key (left-branch tree)))
          ;Look to the right branch if Key is smaller than the current node
		      (else (lookup given-key (right-branch tree)))))
