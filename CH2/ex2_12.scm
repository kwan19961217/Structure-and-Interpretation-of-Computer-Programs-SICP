(define (make-center-percent c p)
        (make-center-width c (* c p)))

(define (percent i)
        (/ (width i)
           (center i)))

;Below are from lib
 (define (make-interval a b) (cons a b)) 
 (define (upper-bound interval) (max (car interval) (cdr interval))) 
 (define (lower-bound interval) (min (car interval) (cdr interval))) 
  
 (define (center i)
         (/ (+ (lower-bound i) (upper-bound i)) 2))
  
(define (make-center-width c w)
        (make-interval (- c w) (+ c w)))
  
(define (width i)
        (/ (- (upper-bound i) (lower-bound i)) 2))
