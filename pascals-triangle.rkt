#lang racket

(define (pascals-triangle n)
  (if (< n 3)
      (if (= n 1) '(1) '(1 1)) 
      (foldl (lambda (i l)
                 (pascals-level i l)) '(1 1) (range 3 (+ n 1)))))

(define (pascals-level n pre [i 2] [sum '(1)])
  (if (= i n)
      (append sum '(1))
      (let ([v (+ (list-ref pre (- i 2))
                  (list-ref pre (- i 1)))])
        (pascals-level n pre (+ i 1) (append sum (list v))))))

(provide pascals-triangle)
