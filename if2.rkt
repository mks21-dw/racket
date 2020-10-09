#lang racket

(define taxiFare
  (lambda (miles people)
    (if (> 5 people)
        (* miles 1.5)
        (* miles 2.5))))
"taxiFare tests"       
(taxiFare 8 3) ;==> 12.0
(taxiFare 8 6) ;==> 20.0


(define salePrice
  (lambda (price weeks)
    (if (= weeks 0)
        price
        (if (= weeks 1)
            (* .75 price)
            (if (= weeks 2)
                (* .5 price)
                (* .25 price))))))
"salePrice test"            
(salePrice 200 0) ;==> 200
(salePrice 200 1) ;==> 150
(salePrice 200 2) ;==> 100
(salePrice 200 3) ;==> 50

(define alarmTime
  (lambda (day vacation?)
    (if vacation?
        (if (or (= day 0) (= day 6))
            12
            10)
        (if (or (= day 0) (= day 6))
            10
            6))))
"alarmTime test"
(alarmTime 0 #t) ;12
(alarmTime 6 #t) ;12
(alarmTime 3 #t) ;10
(alarmTime 0 #f) ;10
(alarmTime 6 #f) ;10
(alarmTime 3 #f) ;6


(define divisible
  (lambda (x b)
    (= 0 (remainder x b))))

(define isLeapYear
  (lambda (year)
    (if (divisible year 400)
        true
        (if (divisible year 100)
            false
            (if (divisible year 4)
                true
                false)))))
"isLeapYear test"
(isLeapYear 2012) ;==> #t
(isLeapYear 1900) ;==> #f
(isLeapYear 2000) ;==> #t
(isLeapYear 1983) ;==> #f