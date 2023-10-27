#lang racket

(define  l0 '())
(define l1 '( 1 2 3 4 5 6 7 8 9))
(define l2 '(42 54 67 89 12 14 54 54 23))
(define l3 '(1 5 7 9 0 -10 45 67 89 ))


(define findMin (lambda (l) (
            if (null? l)
                -inf.0
                (if (< (car l) (findMax (cdr l)))
                    (car l)
                    (findMax (cdr l))
                )
                )
            )
  )

(define findMax (lambda (l) (
                        if (null? l)
                           -inf.0
                           (if (> (car l) (findMax (cdr l)))
                               (car l)
                               (findMax (cdr l))
                            )
                           )
                 )
  )

