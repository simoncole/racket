#lang racket

(define l1 '( 2 4 10 8 6))
(define l2 '(3 12 42 54))
(define l3 '(60 40 -10 0))
(define l4 '(5 6))
(define l5 '(0))


(define findMin (lambda (l) (
            if (null? l)
                +inf.0
                (if (< (car l) (findMin (cdr l)))
                    (car l)
                    (findMin (cdr l))
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


(define (findMaxDiffSingleList l) (
    - (findMax l) (findMin l)
))

( define (findMaxDiffTwoLists l1 l2) (
        - (findMax l1) (findMin l2)
    )
)

( define (findMaxDiffTwoListsReversed l1 l2) (
        - (findMax l2) (findMin l1)    
    )
)

(findMaxDiffSingleList l1)

(findMaxDiffTwoLists l2 l3)
(findMaxDiffTwoListsReversed l2 l3)

(findMaxDiffTwoLists l4 l5)
(findMaxDiffTwoListsReversed l4 l5)

(findMaxDiffSingleList '())
(findMaxDiffTwoLists '() '())
(findMaxDiffTwoListsReversed '() '())