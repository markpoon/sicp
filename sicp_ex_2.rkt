#lang racket

(printf "sicp\n")
; excercise 2.1
; define a better make-rat where only the numerator is negative

(define (make-rat n d)
  (let ((d (abs d))
        (g (gcd n d)))
   (cons (/ n g) (/ d g))))

; the numerator does not change, we just need to ensure that denominator is positive... there is a function called abs which returns the absolute value of an number

(define (numer x) (car x))
(define (denom x) (cdr x))

(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x))
  (newline))

; exercise 2.2
; define make-segment, start-segment, end-segment, midpoint-segement

(define (point x y)
  (cons x y))

(define (x-point point)
  (car point))

(define (y-point point)
  (cdr point))

(define (print-point p)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")")) 

(define (make-segment start-x end-x start-y end-y)
  (cons (point start-x end-x) (cons (point start-y end-y) '())))

(define (start-segment segment)
  (car segment))

(define (end-segment segment)
  (cadr segment)) 

(define (print-segment segment)
  (display "[")
  (print-point (start-segment segment))
  (display ",")
  (print-point (end-segment segment))
  (display "]")
  (newline))

(define (midpoint-segment segment)
  (point (/ (- (x-point (start-segment segment))
               (x-point (end-segment segment))) 2.0)
         (/ (- (y-point (start-segment segment))
               (y-point (end-segment segment))) 2.0)))

; 2.3 make rectangles, comput the perimeter and area of a given rectangle
; make another representation that can use the same perimeter and area procedures


;
