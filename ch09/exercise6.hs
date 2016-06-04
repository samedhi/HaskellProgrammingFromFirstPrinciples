module Exercise6 where

import Data.Char

onlyUpper :: String -> String
onlyUpper s = filter isUpper s

capitalize :: String -> String
capitalize "" = ""
capitalize (s:ss) = toUpper s : ss

uppercase :: String -> String
uppercase "" = ""
uppercase (s:ss) = toUpper s : uppercase ss

capitalizeHead :: String -> Char
capitalizeHead (s:ss) = toUpper s
