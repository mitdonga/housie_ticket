## **Problem Statement**

A version of Bingo played in the UK and some other countries are called "Housie". Each ticket shows exactly 15 numbers, and in each ticket, every number from 1 to 90 is used exactly once.

A ticket is a grid of 3 rows by 9 columns. The first column contains numbers from 1 to 9; the second column numbers from 10 to 19; the third 20 to 29 and so on up until the last column, which contains numbers from 80 to 90.

Each column contains one, two, or three numbers, in increasing order downwards. Each row contains exactly 5 numbers (and hence 4 blanks).

![Housie ticket example](https://i.etsystatic.com/25144557/r/il/b8a290/3753597032/il_794xN.3753597032_4j6n.jpg)

## **TO DO**

Write a Ruby program to generate random Housie tickets. The Ruby program must have a single function that one can call and it should print out the housie ticket on a console in a simple readable format. (blanks can be shown as X)


## **Approach**

First, we will define positions for numbers. It will be represented as 2D array (3 rows x 9 columns).

This 2D array will have elements TRUE & FALSE. TRUE means non-empty position and FALSE means empty position.

Once we have the proper arrangement, then when we will assign numbers to non-empty cells.


## **How to run the program?**

1) Install the Ruby programming language
2) run the solution.rb file `ruby solution.rb`
3) In the terminal you will see one Housie ticket

