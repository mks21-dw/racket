#lang racket
(define areaC
  (lambda (r)
    (* r r pi)))

(define areaSC
  (lambda (size option)
    (if (= 0 option)
        (* size size)
        (areaC size))))
"areaSC test"
(areaSC 10 0) ;==> 100
(areaSC 10 1) ;==> 314.1592...

(define closerNumber
  (lambda (a b target)
    (if (< (abs (- a target))
           (abs (- b target)))
           a
           b)))
"closerNumber tests"                
(closerNumber 7 16 10) ;==> 7
(closerNumber 16 7 10) ;==> 7
(closerNumber -5 8 0) ;==> -5


(define distance
  (lambda (x0 y0 x1 y1)
    (sqrt (+ (expt (- x1 x0) 2)
             (expt (- y1 y0) 2)))))
(define closerPoint
  (lambda (x0 y0 x1 y1 xt yt)
    (if (< (distance x0 y0 xt yt)
           (distance x1 y1 xt yt))
        0
        1)))
"closerPoint tests"    
(closerPoint 4 0 10 0 0 0) ;==> 0
(closerPoint 9 0 0 -3 0 0) ;==> 1

(define militaryTime
  (lambda (time option)
    (if (= option 0)
        (if (= time 12)
            0
            time)
        (if (= time 12)
            time
            (+ time 12)))))
"militaryTime tests"
(militaryTime 3 0) ;==> 3
(militaryTime 3 1) ;==> 15
(militaryTime 12 0) ;==> 0
(militaryTime 12 1) ;==> 12


(define numDigits
  (lambda (n)
    (if (> 10 n)
        1
        (+ 1 (numDigits (quotient n 10))))))
"numDigits test"
(numDigits 3)
(numDigits 1234)