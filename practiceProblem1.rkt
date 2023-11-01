#lang racket

;quickSort

;Graph coloring checker- if a node has a color that has already appeared, return false
    ;If I did it in an imperative way I would iterate through and store each new color I come across
    ;in a hashSet. Check to see if it's in the hashSet 
    ;In functional, recursing over nodeList, check to see if color is in the list of colors passed in
    ;find its edges, recurse over those. If a color of the node appears multiple times return false



;Minimum spanning tree, given graph with weighted edges, create a tree having all nodes and minimum weight
    ;first take all the edges and sort them, 

;Representing graphs in different paradigms:
    ;imperative: adjacency matrix, 
    ;functional: list of edges, containing (to node, from node, weight)

(define e1 '('(0 1) '(0 2) '(2 3) '(2 1) '(3 0)))
(define n1 '('(0 18) '(1 22) '(2 33) '(3 22)))

(define (checkColor prevColors nodes edges) (
    
))




