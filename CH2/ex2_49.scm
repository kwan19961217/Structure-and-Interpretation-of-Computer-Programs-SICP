(define bl (make-vect 0 0))
(define br (make-vect 1 0))
(define tl (make-vect 0 1))
(define tr (make-vect 1 1))

;a
(define bottom-seg (make-segment bl br))
(define left-seg (make-segment bl tl))
(define top-seg (make-segment tl tr))
(define right-seg (make-segment tr br))

(define draw-frame
        (let ((seg-list (list bottom-seg
                              left-seg
                              top-seg
                              right-seg)))
             (segments-painter seg-list)))

;b
(define upward-diagonal (make-segment bl tr))
(define downward-diagonal (make-segment tl br))

(define draw-cross
        (let ((seg-list (list upward-diagonal
                              downward-diagonal)))
             (segments-painter seg-list))) 

;c
(define top-m (make-vect 0.5 1))
(define left-m (make-vect 0 0.5))
(define right-m (make-vect 1 0.5))
(define bottom-m (make-vect 0.5 0))

(define diamond-tl (make-seg top-m left-m))
(define diamond-tr (make-seg top-m right-m))
(define diamond-bl (make-seg bottom-m left-m))
(define diamond-br (make-seg bottom-m right-m))

(define draw-frame
        (let ((seg-list (list diamond-tl
                              diamond-tr
                              diamond-bl
                              diamond-br)))
             (segments-painter seg-list)))


;d
;Locate the relative vector for the end-point of a smile which should lie in the face
;then repeat the procedure similar to c
