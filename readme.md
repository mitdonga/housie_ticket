## **Problem Statement**

A version of Bingo played in the UK and some other countries are called "Housie". Each ticket shows exactly 15 numbers, and in each ticket, every number from 1 to 90 is used exactly once.

A ticket is a grid of 3 rows by 9 columns. The first column contains numbers from 1 to 9; the second column numbers from 10 to 19; the third 20 to 29 and so on up until the last column, which contains numbers from 80 to 90.

Each column contains one, two, or three numbers, in increasing order downwards. Each row contains exactly 5 numbers (and hence 4 blanks).


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

Housie ticket will look something like this

**Outupt 1**

|  5 |  X | 21 |  X | 45 | 55 | 60 |  X |  X |

|  8 | 12 |  X | 33 |  X |  X | 67 | 70 |  X |

|  X | 16 |  X | 38 |  X | 57 |  X | 75 | 87 |


**Outupt 2**

|  X |  X | 23 | 35 | 45 | 50 |  X |  X | 88 |

|  4 |  X |  X | 37 | 47 | 57 |  X |  X | 90 |

|  X | 14 |  X | 39 |  X | 59 | 69 | 78 |  X |

**Outupt 3**

|  1 |  X | 20 | 32 |  X |  X | 61 |  X | 84 |

|  2 | 10 | 27 | 33 |  X |  X |  X |  X | 85 |

|  X |  X |  X | 37 | 49 | 58 |  X | 79 | 86 |


**Outupt 4**

|  5 | 14 |  X | 32 |  X |  X |  X | 75 | 80 |

|  6 |  X | 20 | 37 | 48 |  X |  X | 79 |  X |

|  X |  X | 25 | 39 |  X | 58 | 64 |  X | 87 |


**Outupt 5**

|  3 |  X | 27 |  X |  X | 50 | 61 | 70 |  X |

|  X | 11 | 29 | 38 | 40 |  X | 63 |  X |  X |

|  X | 19 |  X |  X |  X | 52 | 67 | 73 | 82 |
