#lang racket

;; A line starting with a semicolon is a "comment".  You write
;; comments in order to explain in English what your code does, and
;; Racket knows to ignore comments since they aren't part of the
;; program.

;; This tells Racket that you want to use words and sentences (which
;; are disabled by default).
(require (planet dyoo/simply-scheme))

;; This tells Racket that it should "know" about all the functions you
;; define in this file.  (Don't worry about this for now.)
(provide (all-defined-out))

;; Exercise 0 - Introduce yourself

#|

This is a comment that spans multiple lines.

1) What is your name?
Taylor Hodge

2) What is your major?
Remaining curiouser and curiouser

3) Are you a returning student? (i.e. Did you take 61AS last semester?)
I like to think I've never left...

4) What made you to take 61AS?
To fill the gaps in my programming and computing knowledge and become a better builder.

5) Tell us interesting things about yourself.
I love to put one foot in front of the other for a very long time.

|#

;; Make a followup on the "Hello World!" post on Piazza introducing yourself.


;; Exercise 1 - Define sum-of-squares
(define (square x) (* x x))
(define (sum-of-squares x y) (+ (square x) (square y)))  

;; Exercise 2a - Define can-drive
(define (can-drive age)
  (if (number? age)
    (if (< age 16)
    `(Not yet)
    `(Good to go))
  `(Input is not a number)))


;; Exercise 2b - Define fizzbuzz
(define (fizzbuzz number)
  (cond ((= 0 (remainder number 15)) `fizzbuzz)
        ((= 0 (remainder number 5)) `buzz)
        ((= 0 (remainder number 3)) `fizz)
        (else number)))

;; Exercise 3 - Why did the Walrus cross the Serengeti?

#|
Because...I am the walrus??

|#

;; Exercise 4 - new-if vs if

#|
`new-if` is failing, because each example's `then-case` is running, despite 
the conditional test being `#f`. This is causing a recursive infinite loop and division by zero for each example, respectively.

This could mean that the order `what-if` evaluates procedure arguments is different from normal `if` in some way. Perhaps `what-if` evaluates each expression before testing them. This would perform each infinite loop/division by zero before the `if` comparison is made, which means that the `if` comparisoin is never made. To contrast, perhaps `if` only evaluates the expressions in the block _after_ the test condition is proven `#t`.

|#
