(define tree 
        (generate-huffman-tree (list (list 'A 2) (list 'NA 16) (list 'BOOM 1) (list 'SHA 3) (list 'GET 2) (list 'YIP 9) (list 'JOB 2) (list 'WAH 1))))

(encode (list 'GET 'A 'JOB 
              'SHA 'NA 'NA 'NA 'NA 'NA 'NA 'NA 'NA 'GET 'A 
              'JOB 'SHA 'NA 'NA 'NA 'NA 'NA 'NA 'NA 'NA 'WAH 
              'YIP 'YIP 'YIP 'YIP 'YIP 'YIP 'YIP 'YIP 'YIP 'SHA 'BOOM) 
        tree)

;return 
;(1 1 1 1 1 1 1 0 0 1
;1 1 1 0 1 1 1 0 0 0
;0 0 0 0 0 0 1 1 1 1
;1 1 1 0 0 1 1 1 1 0
;1 1 1 0 0 0 0 0 0 0
;0 0 1 1 0 1 0 1 0 1
;0 1 0 1 0 1 0 1 0 1
;0 1 0 1 0 1 1 1 0 1
;1 0 1 1)

;84 bits

;fixed-length: 8 words => log(2, 8) = 3 bits per word
;3bits * 36 words = 108 bits
