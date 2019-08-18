#lang racket

;; Exercise 1.1
#|
10
12
8
3
6
Empty return; Defines procedure of assigning value `3` to `a`
Empty return; Defines procedure of assigning value of `a + 1` to `b` (4)
19
#f
4
16
6
16
|#

;; Exercise 1.2
(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))) (* 3 (- 6 2) (- 2 7)))

;; Exercise 1.3
(define (square x) (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (largest-sum-of-squares x y z)
  (sum-of-squares (max x y) (max (min x y) z)))
