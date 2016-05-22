module WordNumber where

import Data.List (intersperse)

digitToWord :: Int -> String
digitToWord n
  | n == 0 = "Zero"
  | n == 1 = "One"
  | n == 2 = "Two"
  | n == 3 = "Three"
  | n == 4 = "Four"
  | n == 5 = "Five"
  | n == 6 = "Six"
  | n == 7 = "Seven"
  | n == 8 = "Eight"
  | n == 9 = "Nine"

digitsRec :: Int -> [Int] -> [Int]
digitsRec n ls
  | n < 10 = n : ls
  | otherwise = digitsRec (div n 10) ((mod n 10) : ls)

digits :: Int -> [Int]
digits n = digitsRec n []

wordNumber :: Int -> String
wordNumber n = concat (intersperse ['-'] (map digitToWord (digits n)))
