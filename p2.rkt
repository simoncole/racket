#lang racket

;I almost finished but after quite some effort I couldn't figure out how to filter out the largest
;list of coordinates. As you can see when you run it it returns a list of each circle and how many points
;it contains, I tried to write a function that would filter out the largest of these lists but it was
;surprisingly hard. I'll be going to Dr. Garfield to ask him how I should do it.

(define plist1 (list  '(5 5) '(10 10) '(15 15)))
(define plist2 (list '(5 5) '(1 10) '(10 15) '(10 19) '(19 10) '(18 18)))
(define plist3 (list '(7 8) '(15 5) '(18 18) '(22 23)))
(define plist4 (list '(5 5) '(5 5) '(5 5)))
(define plist5 (list '(0 0) '(5 0) '(10 0)))
(define plist6 (list '(0 0) '(100 100) '(0 0) '(1 2) '(3 4)))
(define plist7 '())

(define clist1 (list '(0 0 1)))
(define clist2 (list '(10 10 10) '( 20 20 20)))
(define clist3 (list '(5 10 5) '(20 20 5)))

;return a list having the circle that contains the most points and the list of points in the circle
;for each circle, check each point to see if it's in the circle
;-fn that checks if point is in circle
;-fn that recurses over the circeles
;-fn that recurses over the points

(define (distanceBetweenPoints p1 p2)
  (sqrt (+ (expt (- (car p1) (car p2)) 2)
           (expt (- (cadr p1) (cadr p2)) 2)
        )
    )
)

;checks to see if a point is in the given circle
    ;returns boolean
(define (isPointInCircle? circle point)
  (if (<= (distanceBetweenPoints (list (car circle) (car (cdr circle))) point) (last circle))
      #t
      #f))

;given a circle, and a point list check for each point if it is in the circle
    ;returns a list of points in the circle
(define (checkPointsInCircle circle points) (
    ; (displayln circle)
    ; (displayln points)
    if (null? points)
        '()
        (
            if (isPointInCircle? circle (car points))
            (cons (car points) (checkPointsInCircle circle (cdr points)))
            (checkPointsInCircle circle (cdr points))
        )
))

; (define (getLengthOfList list) (
;     length (car (cdr list))
; ))

; (define (mapLists lists) (
;     ;for each list counting the cdr of 
;     map getLengthOfList lists
; ))

; (define (filterForLargestList lists)
;   (if (null? lists)
;       '()
;       (if (> (length (car lists)) (length (filterForLargestList (cdr lists))))
;           (car lists)
;           (filterForLargestList (cdr lists)))
;     )
; )

;use map
(define (checkCircles cList pList) 
    (
        ;map over each circle and find the max points in the resulting array. filter out the largest list
         map (lambda (circle) (cons circle (list (checkPointsInCircle circle pList)))) cList
    )
)

(checkCircles clist1 plist1)
(checkCircles clist2 plist2)
(checkCircles clist3 plist3)
(((5 10 5) ((7 8))) ((20 20 5) ((18 18) (22 23))))
; (checkPointsInCircle)
