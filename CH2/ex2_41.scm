(define (unique-triples n)
  (flatmap (lambda (i) 
                   (map (lambda (p) 
                                (cons i p)) 
                        (unique-pairs (- i 1))))
           (enumerate-interval 1 n)))


(define (ordered-triples-sum n s)
		(filter (lambda (seq) 
		                (= s (sum seq)))
		        (unique-triples n)) 
)

(define (sum seq)
        (accumulate + 0 seq))
