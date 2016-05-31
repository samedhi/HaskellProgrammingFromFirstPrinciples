eftBool :: Bool -> Bool -> [Bool]
eftBool True True = [True]
eftBool False False = [False]
eftBool _ _ = []

eftOrdering :: Ordering -> Ordering -> [Ordering]
eftOrdering = undefined

eftInt :: Int -> Int -> [Int]
eftInt = undefined

eftChar :: Char -> Char -> [Char]
eftChar = undefined
