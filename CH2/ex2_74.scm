;a
  (define (get-record name div)
          ((get 'get-record div) name))
;b
(define (get-salary name div)
        ((get 'get-salary div) (get-record name div)))     

;c
(define (find-employee-record name divs)
        (let (result (get-record name (car divs)))
             (if (not (null? results))
                 result
                 (find-employee-record name (cdr divs))))) 
