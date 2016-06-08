module Exercise2 where

fibs = 1 : scanl (+) 1 fibs
fibsN x = fibs !! x

fibs20 = take 20 fibs

fibsLess100 = takeWhile (\v -> v < 100) fibs

factorials :: [Integer]
factorials = scanl (\a b -> a * b) 1 [2..]

nFactorials :: Int -> [Integer]
nFactorials n = take n factorials
