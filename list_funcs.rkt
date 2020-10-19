#lang racket
#|
Group members:
TMPG:

Below you will find 2 programming problems, along with instructions and descriptions of new functions.

Your job, **as a team** is to solve as many problems as you can. You must work in order, as later problems will rely on earlier ones.

I have provided define statements to help you get started for each problem.
|#


#| Problem 0
cons is a racket function that takes 2 inputs. The second input must be a list. cons inserts the first input to the beginning of the list.

Examples:
  (cons 3 '(1 2)) ==> (3 1 2)
  (cons 5 '()) ==> (5)

Write a function revBuildList. It should work similarly to build-list, but the inner function should start at n and stop at 1.

Examples:
(revBuildList 4 (lambda (n) n)) ==> '(4 3 2 1)
(revBuildList 4 sqrt) ==> '(2 1.7320508075688772 1.4142135623730951 1)

Note: You should not use any list functions EXCEPT for cons
|#

(define revBuildList
  (lambda (n func)
    '() ;replace '() with your code
    ))

"revBuildList test:"
(revBuildList 4 (lambda (n) n))
(revBuildList 4 sqrt)



#| Problem 1
car is a racket function that returns the first element of a list.
Example:
  (car '(4 8 12)) ==> 4

cdr is a racket function that returns a list containing every element after the first.

Examples:
  (cdr '(4 8 12)) ==> '(8 12)
  (cdr '(12)) ==> '()

empty? is a function that takes one input. It returns true if the input is an empty list, falst otherwise.

Examples:
  (empty? '()) ==> #t
  (empty? '(1 5 229)) ==> #f


Write myMap. It should take a list and a function as inputs, and return a new list created by applying the function to each element of the input list.

Example:
(myMap '(49 16 100 25) sqrt) ==> '(7 4 10 5)
|#

(define myMap
  (lambda (listy func)
   '() ;replace '() with your code
    ))

"myMap test:"
(myMap '(49 16 100 25) sqrt)


#| Challenge
Write myBuildList, which works the same exact way as build-list.

hint: you may want to create an extra function to help out that has an extra input...
|#
