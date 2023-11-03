#lang racket

(define pList1 '('(1 1) '(2 1) '(4 2) '(3 6) '(22 5) '(3 19) '(6 2) '(4 3)))
(define clist1 '('(6 2 2) '(3 3 3) '(1 1 1)))

;return a list having the circle that contains the most points and the list of points in the circle
;for each circle, check each point to see if it's in the circle
;-fn that checks if point is in circle
;-fn that recurses over the circeles
;-fn that recurses over the points

(define (isPointInCircle circle point) (

))

(define (checkPointsInCircle circle points) (

))

(define (checkCircles cList pList maxPoints) (
    if (null? (car cList)) 
    (null)
    (
        ;check if the current circle has the most points and pass it on if so
        let ([currMaxPoints (checkPointsInCircle(car clist pList))])
        if ((length currMaxPoints) > (length maxPoints))
            (
                define lst '((cdr cList) checkCircles (cdr cList pList currMaxPoints))
            )
            (
                define lst '((cdr cList) checkCircles (cdr cList pList maxPoints))
            )
    )
))

