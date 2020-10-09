#lang racket

(define posInts
  (lambda (n)
    (build-list n
                (lambda (x)
                  x))))
"posInts test"
(posInts 10) ;==> '(0 1 2 3 4 5 6 7 8 9)

(define negInts
  (lambda (n)
    (build-list n
                (lambda (x)
                  (- x n)))))
"negInts test"
(negInts 10) ;==> '(-10 -9 -8 -7 -6 -5 -4 -3 -2 -1)

(define splitInts
  (lambda (n)
    (build-list n
                (lambda (x)
                  (- x (quotient n 2))))))
"splitInts test"
(splitInts 6) ;==> '(-3 -2 -1 0 1 2)
(splitInts 5) ;==> '(-2 -1 0 1 2)


(define powList
  (lambda (n base)
    (build-list n
                (lambda (x)
                  (expt base x)))))
"powList test"
(powList 4 3)
