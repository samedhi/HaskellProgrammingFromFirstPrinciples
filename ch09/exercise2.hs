module Exercise2 where

splitter :: String -> Char -> [String]
splitter "" _ = []
splitter s c = (takeWhile (/= c) s) : (splitter (dropWhile (== c) (dropWhile (/= c) s)) c)

myWords :: String -> [String]
myWords s = splitter s ' '

firstSen = "Tyger Tyger, burning bright\n"
secondSen = "In the forests of the night\n"
thirdSen = "What immortal hand or eye\n"
fourthSen = "Could frame thy fearful symmetry?"
sentences = firstSen ++ secondSen ++ thirdSen ++ fourthSen

myLines :: String -> [String]
myLines sentences = splitter sentences '\n'

shouldEqual =
  [ "Tyger Tyger, burning bright"
  , "In the forests of the night"
  , "What immortal hand or eye"
  , "Could frame thy fearful symmetry?"
  ]

main :: IO ()
main =
  print $ "Are they equal? "
  ++ show (myLines sentences == shouldEqual)
