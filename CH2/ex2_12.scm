(define (make-center-percent c p)
        (make-interval (- c (* c p))
                       (+ c (* c p))))

(define (percent i)
        (/ (- (upper-bound i)
              (center i))
           (center i)))

;Below are from lib
 (define (make-interval a b) (cons a b)) 
 (define (upper-bound interval) (max (car interval) (cdr interval))) 
 (define (lower-bound interval) (min (car interval) (cdr interval))) 
 (define (center i)
         (/ (+ (lower-bound i) (upper-bound i)) 2))
