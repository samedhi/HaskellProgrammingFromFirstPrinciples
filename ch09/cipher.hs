module Cipher where

import Data.Char

aInt = ord 'a'
zInt = ord 'z'

caesar :: String -> Int -> String
caesar s i = map (\c -> chr $ (+aInt) $ (mod ((+i) $ (+ (-aInt)) $ ord $ c) 26)) s

unCaesar :: String -> Int -> String
unCaesar s i = map (\c -> chr $ (+aInt) $ (mod ((+ (-i)) $ (+ (-aInt)) $ ord $ c) 26)) s
