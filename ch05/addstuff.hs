module AddStuff where

addStuff :: Integer -> Integer -> Integer
addStuff a b = a + b + 5

funcIgnoresArgs :: a -> a -> a -> String
funcIgnoresArgs x y z = "Blah"

nonsense :: Bool -> Integer
nonsense True = 805
nonsense False = 1337

typicalCurriedFunction :: Integer -> Bool -> Integer
typicalCurriedFunction i b = i + (nonsense b)

uncurriedFunction :: (Integer, Bool) -> Integer
uncurriedFunction (i, b) = i + (nonsense b)

anonymous :: Integer -> Bool -> Integer
anonymous = \i b -> i + (nonsense b)

anonymousAndManuallyNested :: Integer -> Bool -> Integer
anonymousAndManuallyNested = \i -> \b -> i + (nonsense b)
