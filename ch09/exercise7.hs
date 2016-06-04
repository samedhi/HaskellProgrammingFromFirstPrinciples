module Exercsise7 where

myOr :: [Bool] -> Bool
myOr [] = False
myOr (True:_) = True
myOr (b:bs) = myOr bs

myAny :: (a -> Bool) -> [a] -> Bool
myAny f xs = myOr $ map f xs

myElem :: Eq a => a -> [a] -> Bool
myElem x xs = myAny (\v -> v == x) xs

myReverseRec :: [a] -> [a] -> [a]
myReverseRec acc [] = acc
myReverseRec acc (x:xs) = myReverseRec (x:acc) xs

myReverse :: [a] -> [a]
myReverse xs = myReverseRec [] xs

squish :: [[a]] -> [a]
squish [] = []
squish (xs:xss) = xs ++ squish xss

squishMapRec :: (a -> [b]) -> [a] -> [[b]]
squishMapRec _ [] = []
squishMapRec f (x:xs) = (f x) : (squishMapRec f xs)

squishMap :: (a -> [b]) -> [a] -> [b]
squishMap f xs = squish $ squishMapRec f xs

squishAgain :: [[a]] -> [a]
squishAgain xs = squishMap id xs

myMaximumByRec :: a -> (a -> a -> Ordering)  -> [a]  -> a
myMaximumByRec n _ [] = n
myMaximumByRec n f (x:xs) = if f n x == GT then myMaximumByRec n f xs else myMaximumByRec x f xs

myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy f (x:xs) = myMaximumByRec x f xs

myMinimumByRec :: a -> (a -> a -> Ordering)  -> [a]  -> a
myMinimumByRec n _ [] = n
myMinimumByRec n f (x:xs) = if f n x == LT then myMinimumByRec n f xs else myMinimumByRec x f xs

myMinimumBy :: (a -> a -> Ordering) -> [a] -> a
myMinimumBy f (x:xs) = myMinimumByRec x f xs
