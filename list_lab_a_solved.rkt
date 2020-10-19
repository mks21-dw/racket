#lang racket
#|
Group members:
TMPG:

Below you will find 4 programming problems, along with instructions and descriptions of new functions.

Your job, **as a team** is to solve as many problems as you can. You must work in order, as later problems will rely on earlier ones.

I have provided empty define statements to help you get started for each problem.
|#


#| Problem 0
(random min max) returns a random integer between min and max-1)

Write a function called randList
(randList n) should return a list of n randomly generated integers between 50 and 99 (inclusive).
|#
(define randList
  (lambda (n)
    (build-list n
                (lambda (x)
                  (random 50 100)))))
"randList test"
(randList 5)
(randList 20)

#| Problem 1
Using randList, assign a list of 10 random numbers to a variable, display the variable
|#
(define g (randList 10))
"list"
g

#|
foldl is a function that takes a list input and returns a single value based on some operation to be performed on each element in the list

(foldl func start_value alist)
* func must be a function that takes 2 inputs
  * The first input will be the next element in the list.
  * The second input will be the previous return value.
* start_value is used as the initial value for the second input to func

Below is a function that uses foldl to count the number of items in a list
|#
(define listSize
  (lambda (listy)
    (foldl (lambda (item total)
             (+ 1 total))
           0
           listy)))
"size of list:"
(listSize g)
#|
Here is a sample trace to help you understand foldl
(listSize '(9 3 7 5))
(foldl (lambda (item total) (+ 1 total)) 0 '(9 3 7 5))
item   lambda function   result
9      (+ 1 0)           1
3      (+ 1 1)           2
7      (+ 1 2)           3
5      (+ 1 3)           4
|#

#| Problem 2
Using foldl, write a function that finds the sum of all the elements in a list.
(if you're having trouble, start with the listSize function)
|#
(define listSum
  (lambda (listy)
    (foldl (lambda (item total)
             (+ item total))
           0
           listy)))
"list sum:"
(listSum g)


#| Problem 3
Write a function that returns the average of a list. Be sure to use listSize and your sum functions
|#
(define average
  (lambda (listy)
    (/ (listSum listy) (listSize listy))))
"list average:"
(average g)

#| Problem 4
map is a function that returns a new list by applying a function to each element of an input list.

(map func alist)
* func must be a function that takes 1 input
  * That input will be replaced by each element in the list

Write a function that takes a list and the average value of that list as inputs.
It should return a list that contains the differences between each element in the list and the average.

There is an example of a function that uses map at the end of this file.
|#
(define listDiff
  (lambda (listy avg)
    (map (lambda
             (item)
           (- item avg))
         listy)))
"distance from average"
(listDiff g (average g))




#|  Map example
Below is a function that uses map to multiply each element in a list by 5.
It is not related to the problems, but is provided as an example of how to use map.

(define 5ify
  (lambda (listy)
    (map (lambda
             (item)
           (* item 5))
         listy
         )))

(5ify '(9 3 7 5))
(map (lambda (item) (* 5 item)) '(9 3 7 5))

item   lambda function   result
9      (* 5 9)           45
3      (* 5 3)           15
7      (* 5 7)           35
5      (* 5 5)           25

'(45 15 35 25)
|#