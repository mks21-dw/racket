#lang racket

(define areaC
  (lambda (d)
    (* (/ d 2) (/ d 2) 3.14)))
"areaC tests"
(areaC 20) ;==> 314
(areaC 5) ;==> 19.625


(define hypotenuse
  (lambda (a b)
    (sqrt (+ (* a a) (* b b)))))
"hypotenuse tests"
(hypotenuse 3 4) ;==> 5
(hypotenuse 11 60) ;==> 61

(define perimFromArea
  (lambda (area)
    (* 4 (sqrt area))))
"perimFromArea tests"
(perimFromArea 25) ;==> 20
(perimFromArea 10) ;==> 12.649110640673518