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

;visit and remove from queue then add its children to the queue, add the whole tree to the queue
(define (traverse queue result) (
      if (null? queue) result (
       ;remove car of queue and add its car (the value) to result
       ;add each child to the queue as a seperate element at the end of queue 
       ;recurse with the new queue and result
       traverse (append (cdr queue) (cdr (car queue))) (flatten (cons result (car (car queue))))
       )                    
 )
                    
      
)

(define (breadthFirst tree) (
    traverse (list tree) '()
))

;add this node to the list, if there are children recurse 
; (define (breadthFirst tree) (
;     cond
;         [(null? tree) '()]
;         [(isLeaf tree) tree]
;         [else 
;             (apply append (list (car tree))
;                 (map breadthFirst (cdr tree)))
;         ]
; ))

;(depthFirstPostorder t1)
 (breadthFirst t1)
; (depthFirstTraversal t1)

