(define (sum term a next b)
  (define (iter a result)
    (if (>= a b)
        result
        (iter (next a) (+ result (term a)))))
  (iter a 0))


;Below is same as ex1.29

(define (simpson f a b n) 
	(define h (/ ( - b a) n))
	(define (add-2h x) (+ x h h))
	(* (/ h 3) 
	   (+ (f a)
	   	  (f b)
	   	  (* 4 (sum f (+ a h) add-2h b))
	   	  (* 2 (sum f (+ a h h) add-2h (- b h))))))



(define (cube x) (* x x x))
