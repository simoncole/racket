#lang racket

(define plist1 (list '(0 0) '(4 0) '(0 4) '(4 4)))
(define plist2 (list '(24 5 )'(1 22 ) '(1 43 ) '(24 29 ) '(19 47 ) '(16 28 ) '(33 33 ) '(39 22 ) '(49 17 ) '(25 36 ) ))
(define plist3 (list '(43 23 ) '(33 16 ) '(9 29 ) '(5 9 ) '(47 0 ) '(50 46 ) '(12 22 ) '(11 31 ) '(29 19 ) '(48 39 ) ))
(define plist4 (list '(5 5) '(5 5) '(5 5)))
(define plist5 (list '(0 0) '(5 0) '(10 0)))
(define plist6 (list '(0 0) '(100 100) '(0 0) '(1 2) '(3 4)))
(define plist7 '())

(define clist1 '(list '(6 2 2) '(3 3 3) '(1 1 1)))

;return a list having the circle that contains the most points and the list of points in the circle
;for each circle, check each point to see if it's in the circle
;-fn that checks if point is in circle
;-fn that recurses over the circeles
;-fn that recurses over the points

;checks to see if a point is in the given circle
    ;returns boolean
(define (isPointInCircle circle point) (

))

;given a circle, and a point list check for each point if it is in the circle
    ;returns a list where the first element is the circle given and the second is a list of the 
    ;points that are in the circle
(define (checkPointsInCircle circle points) (

))

;recurse through circles checking the pList for each
;   return list of circle with most points and the points contained in it
;   if the points is greater by the time you get to the end you return the max points list and the circle 
(define (checkCircles cList pList maxPointsCircle) (
    if (null? (car cList)) 
    (maxPointsCircle)
    (
        ;points in the current circle
        let ([currCirclePoints (checkPointsInCircle(car clist pList))])
        ;if there are more points for the current circle
        if ((length (list-ref currCirclePoints 2)) > (length (list-ref maxPointsCircle 2)))
            (
                ;continue with new circle
                checkCircles ((cdr cList) pList currCirclePoints)
            )
            (
                checkCircles ((cdr cList) pList maxPointsCircle)
            )
    )
))

