#lang racket

(define isBetween
  (lambda (a b c)
    (and (< a b)
         (< b c))))
"isBetween test"
(isBetween 4 5 6) ;==> true
(isBetween 3 9 7) ;==> false
(isBetween 4 4 9) ;==> false

(define pythTriple
  (lambda (a b c)
    (= (* c c) (+ (* a a) (* b b)))))
"pythTriple test"
(pythTriple 3 4 5) ;==> true
(pythTriple 6 7 10) ;==> false
(pythTriple 4  3 5) ;==> true
(pythTriple 5 3 4) ;==> false


(define pythTriple2
  (lambda (a b c)
    (or (pythTriple a b c)
        (pythTriple a c b)
        (pythTriple b c a))))
"pythTriple2 test"
(pythTriple2 3 4 5) ;==> #true
(pythTriple2 6 7 10) ;==> #false
(pythTriple2 4  3 5) ;==> #true
(pythTriple2 5 3 4) ;==> #true
(pythTriple2 4 5 3) ;==> #true

(define xor
  (lambda (p q)
    (and (or p q)
         (not (and p q)))))
"xor test"
(xor #true #true) ;==> false
(xor #true #false) ;==> true
(xor #false #true) ;==> true
(xor #false #false) ;==> false
(xor (> 3 4) (<= 5 6)) ;==> true

(define xor3
  (lambda (p q r)
    (or (and p (not (or q r)))
        (and q (not (or p r)))
        (and r (not (or p q))))))
