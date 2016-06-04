module Exercise5 where

myZipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
myZipWith f [] _ = []
myZipWith f _ [] = []
myZipWith f (x:xs) (y:ys) = (f x y) : myZipWith f xs ys

myZip :: [a] -> [b] -> [(a,b)]
myZip xs ys = myZipWith (\x y -> (x,y)) xs ys
