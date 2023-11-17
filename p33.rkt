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

;visit when there are no children. Once it has come back from visiting with no children,
; check if there are other children and repeat for those
; (define (depthFirstTraversal tree) (
;     if (isLeaf(cdr tree))
;     ;no children
;     (
;         cons ((car tree) tree)

;     )
;     ;there are children
;     (
;         ;recurese on each child
;         depthFirstTraversal (cadr tree)
;     )
; ))

(define (depthFirstPostorder tree)
    (cond
        ; if tree is empty
        [(null? tree) '()] 
        ;check if leafNode, return node
        [(isLeaf tree) tree]
        ;append val of node with list of vals of child nodes
        ;apply append to the lists of children to combine them into a single list
        [else
            (append (apply append (map depthFirstPostorder (cdr tree)))
                    (list (car tree))
            )
        ]
    )
)

(depthFirstPostorder t1)