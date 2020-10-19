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
(randList n) should return a list of n randomly generated integers between 25 and 74 (inclusive).
|#
(define randList
  (lambda (n)
    '() ;remove '() and add your code
    ))
"randList test"
(randList 5)
(randList 20)


#| Problem 1
Using randlist, assign a list of 10 random numbers to a variable, display the variable
|#
(define g '()) ;remove '() and add your code
"list:"
g

#|
foldl is a function that takes a list input and returns a single value based on some operation to be performed on each element in the list

(foldl func start_value alist)
* func must be a function that takes 2 inputs
  * The first input will be the next element in the list.
  * The second input will be the previous return value.
* start_value is used as the initial value for the second input to func

Below is a function that uses foldl to find the largest value in a list of positive integers.
|#
(define listMax
  (lambda (listy)
    (foldl (lambda (item guess)
             (if (> item guess)
                 item
                 guess))
           0 ;question to ponder: why is 0 a good value here?
           listy)))
"max in list:"
(listMax g)
#|
Here is a sample trace to help you understand foldl
(listMax '(3 7 9 5))
(foldl (lambda (item total) (if (> item guess) item guess) 0 '(3 7 9 5))
item   lambda function   result
7      (if (> 7 0) 7 0)  7
3      (if (> 3 7) 3 7)  7
5      (if (> 5 7) 5 7)  7
9      (if (> 9 7) 9 7)  9
|#


#| Problem 2
Using foldl, write a function that finds the smallest value in a list of integers created by randList.
(if you're having trouble, start with the lsitMax function)
|# 
(define listMin
  (lambda (listy)
    0  ;remove 0 and add your code
    ))
"min of list:"
(listMin g)

#| Problem 3
The mid range of a list of values is the sum of the smallest and largest values, divided by 2.
Write a function that returns the mid range of a list. Be sure to use listMax and your listMin functions
|#
(define midRange
  (lambda (listy)
    0  ;remove 0 and add your code
    ))
"mid range"
(midRange g)

#| Problem 4
filter is a function that returns a new list by applying a test function to each element of an input list, and only including elements that pass the provided test function.

(filter func alist)
* func must be a function that takes 1 input
  * That input will be replaced by each element in the list
  * func must return a boolean value

Write a function that takes a list and the mid range of that list as inputs.
It should return a list that contains only the elments that are above the mid range.

There is an example of a function that uses filter at the end of this file.
|#
(define aboveMid
  (lambda (listy avg)
    '()  ;remove '() and add your code
    ))
"aboveMid test:"
(aboveMid g (midRange g))



#|  Filter example
Below is a function that uses filter to remove .
It is not related to the problems, but is provided as an example of how to use map.

(define evenList
  (lambda (listy)
    (filter (lambda
             (item)
           (= 0 (remainder item 2)))
         listy
         )))

(evenList '(9 4 7 6))
(filter (lambda (item) (= 0 (remainder item 2))) '(9 4 7 6))

item   lambda function         result
9      (= 0 (remainder 9 2))   false
4      (= 0 (remainder 4 2))   true
7      (= 0 (remainder 7 2))   false
6      (= 0 (remainder 6 2))   true

'(4 6)
|#