(define (for-each proc ls)
        (if (null? ls)
            #t
        	((lambda (l) (proc (car l)) 
        	             (for-each proc (cdr l))) ls)
            ))
