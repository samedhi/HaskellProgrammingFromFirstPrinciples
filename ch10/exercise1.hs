module Exercise1 where

import Data.Time

data DatabaseItem = DbString String
                  | DbNumber Integer
                  | DbDate UTCTime
                  deriving (Eq, Ord, Show)

theDatabase :: [DatabaseItem]
theDatabase =
  [ DbDate (UTCTime (fromGregorian 1911 5 1)
            (secondsToDiffTime 34123))
  , DbNumber 9001
  , DbString "Hello, world!"
  , DbDate (UTCTime
            (fromGregorian 1921 5 1)
            (secondsToDiffTime 34123))
  , DbNumber 0]

filterDbDate :: [DatabaseItem] -> [UTCTime]
filterDbDate xs = foldr (\ a b ->  case a of
                            DbDate a -> a : b
                            _ -> b) [] xs

filterDbNumber :: [DatabaseItem] -> [Integer]
filterDbNumber xs = foldr (\ a b ->  case a of
                              DbNumber a -> a : b
                              _ -> b) [] xs


mostRecentDate :: [UTCTime] -> UTCTime
mostRecentDate [] = undefined
mostRecentDate (x:xs) = foldr max x xs

mostRecent :: [DatabaseItem] -> UTCTime
mostRecent (x:xs) = mostRecentDate $ filterDbDate xs

sumDbNumber :: [Integer] -> Integer
sumDbNumber [] = 0
sumDbNumber (x:xs) = foldr (+) x xs

sumDb :: [DatabaseItem] -> Integer
sumDb [] = 0
sumDb (x:xs) = sumDbNumber $ filterDbNumber xs

avgDb :: [DatabaseItem] -> Double
avgDb xs = fromIntegral(sumDbNumber ys) / fromIntegral(length ys) where
  ys = filterDbNumber xs
