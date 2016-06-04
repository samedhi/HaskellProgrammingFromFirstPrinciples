module Exercise4 where

multiplesOf3 = [x | x <- [1..30], 0 == mod x 3]

multipleOf3Length = length multiplesOf3

myFilter :: String -> [String]
myFilter s = filter (\s -> (not (elem s ["the", "a", "an"]))) (words s)
