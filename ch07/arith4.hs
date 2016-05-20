module Arith4 where

roundTrip :: (Show a, Read a) => a -> a
roundTrip a = read (show a)

roundTripPF :: (Show a, Read a) => a -> a
roundTripPF = read . show

-- TODO: Couldn't figure this one out
roundTripFlex :: (Show a, Read b) => a -> b --
roundTripFlex (Show x) = read . show $ x

main = do
  print (roundTripFlex 4)
  print (id 4)

-- TODO: SUM vs Product types in 7.12
-- TODO: 7.12 page 268 has plenty of examples that I don't quite get
