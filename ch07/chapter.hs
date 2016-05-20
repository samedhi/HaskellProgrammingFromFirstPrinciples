module Chapter where

tenDigit :: Integral a => a -> a
tenDigit x = t
  where (t,_) = divMod x 10

hundredDigit :: Integral a => a -> a
hundredDigit x = t
  where (t,_) = divMod x 100

foldBool1 :: a -> a -> Bool -> a
foldBool1 x y z
  | z == True = x
  | otherwise = y

foldBool2 :: a -> a -> Bool -> a
foldBool2 x y z =
  case z of
    True -> x
    False -> y

g f (x,y) = (f x, y)
g :: (a -> b) -> (a, c) -> (b, c)
