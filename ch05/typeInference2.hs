module TypeInference2 where


x = 5
y = x + 5
z y = y * 10
f = 4 / y

bigNum = (^) 5 $ 10

functionH :: [a] -> a
functionH (x:_) = x

functionC :: (Ord a) => a -> a -> Bool
functionC x y = if (x > y) then True else False

functionS :: (a,b) -> b
functionS (x,y) = y

i :: a -> a
i a = a

c :: a -> b -> a
c x y = x

c' :: a -> b -> b
c' x y = y

r :: [a] -> [a]
r x = x

co :: (b -> c) -> (a -> b) -> (a -> c)
co f1 f2 x = f1 $ f2 $ x

a :: (a -> c) -> a -> a
a f x = x

a' :: (a -> b) -> a -> b
a' f x = f x
