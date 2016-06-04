eftBool :: Bool -> Bool -> [Bool]
eftBool True True = [True]
eftBool False False = [False]
eftBool _ _ = []

-- TODO: This fails
-- eftOrdering :: Ordering -> Ordering -> [Ordering]
-- eftOrdering x y = case order of
--   LT -> (succ x) : (eftOrdering (succ x) y)
--   EQ -> [x]
--   GT -> []
--   where order = compare x y

eftInt :: Int -> Int -> [Int]
eftInt x y = [x..y]

eftChar :: Char -> Char -> [Char]
eftChar x y = [x..y]
