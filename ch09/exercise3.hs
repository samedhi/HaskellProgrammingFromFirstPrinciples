module Exercise3 where

mySqr  = [x^2 | x <- [1..5]]
myCube = [y^3 | y <- [1..5]]

tuples = [(x,y) | x <- mySqr, y <- myCube]

tuplesLess30 = [(x,y) | x <- mySqr, y <- myCube, x < 50, y < 50]

length tuples
length tuplesLess30
