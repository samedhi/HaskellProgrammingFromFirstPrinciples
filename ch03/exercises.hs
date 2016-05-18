module Exercises where

exclaim :: String -> String
exclaim s = s ++ "!"

y :: String -> String
y x = "y"

thirdLetter :: String -> Char
thirdLetter s = s !! 2

letterIndex :: Int -> Char
letterIndex x = "Curry is awesome" !! x

rvrs :: String -> String
rvrs s = drop 9 s ++ take 4 (drop 5 s) ++ take 5 s

main :: IO ()
main = print (rvrs "Curry is awesome")
