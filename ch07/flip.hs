module Flip where

flip :: (a -> b -> c) -> b -> a -> c
flip f x y = f y x

myFlip :: (a -> b -> c) -> b -> a -> c
myFlip f = \ x y -> f y x

