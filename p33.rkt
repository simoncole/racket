#lang racket

(define t1 
  '(1 
    (2 
      (5 
        (11) 
        (12 
          (17)
        )
      ) 
      (6) 
    ) 
    (3 
      (7) 
      (8) 
    ) 
    (4 
      (9 
        (13) 
        (14)
      ) 
      (10 
        (15) 
        (16)
      )
    )
  )
)

(define (isLeaf node) (
    null? (cdr node)
    )
)

(define (depthFirstPostorder tree)
    (cond
        ; if tree is empty
        [(null? tree) '()] 
        ;check if leafNode, return node
        [(isLeaf tree) tree]
        [else
            ;flatten fixes the list structure
            (flatten
                ;map over children and add them to the list with the curr element after         
                (cons (append (map depthFirstPostorder (cdr tree)))
                        (car tree)
                )
            )
        ]
    )
)


;add this node to the list, if there are children recurse 
(define (breadthFirst tree) (
    cond
        [(null? tree) '()]
        [(isLeaf tree) tree]
        [else 
            (apply append (list (car tree))
                (map breadthFirst (cdr tree)))
        ]
))

(depthFirstPostorder t1)
; (breadthFirst t1)
; (depthFirstTraversal t1)
