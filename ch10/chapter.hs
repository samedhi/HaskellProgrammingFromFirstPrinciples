module Chapter where

stops = "pbtdkg"
vowels = "aeiou"

threeTuples = [(a,b,c) | a <- stops, b <- vowels, c <- stops]

pThreeTuples = filter (\(v,_,_) -> v == 'p') threeTuples

seekritFunc x = fromIntegral (sum (map length (words x))) / fromIntegral (length (words x))

myAnd :: [Bool] -> Bool
myAnd = foldr (&&) True

myOr :: [Bool] -> Bool
myOr = foldr (||) False

myAny :: (a -> Bool) -> [a] -> Bool
myAny f xs = myOr $ map f xs

myElem :: Eq a => a -> [a] -> Bool
myElem a = myAny (\v -> v == a)

myReverse :: [a] -> [a]
myReverse = foldl (flip (:)) []

myMap :: (a -> b) -> [a] -> [b]
myMap f = foldr (\a b -> (f a) : b) []

myFilter :: (a -> Bool) -> [a] -> [a]
myFilter f = foldr (\a b -> if (f a) then a : b else b) []

squish :: [[a]] -> [a]
squish = foldr (\a b -> a ++ b) []

squishMap :: (a -> [b]) -> [a] -> [b]
squishMap f = foldr (\a b -> (f a) ++ b) []

squishAgain :: [[a]] -> [a]
squishAgain = foldr (\a b -> a ++ b) []

myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy f (x:xs) = foldr (\a b -> case f a b of
                                 GT -> a
                                 _ -> b) x xs

myMinimumBy :: (a -> a -> Ordering) -> [a] -> a
myMinimumBy f (x:xs) = foldr (\a b -> case f a b of
                                 LT -> a
                                 _ -> b) x xs
