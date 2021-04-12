(define (simpson f a b n) 
	(define h (/ ( - b a) n))
	(define (add-2h x) (+ x h h))
	(* (/ h 3) 
	   (+ (f a)
	   	  (f b)
	   	  (* 4 (sum f (+ a h) add-2h b h))
	   	  (* 2 (sum f (+ a h h) add-2h (- b h))))))



(define (cube x) (* x x x))

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))
