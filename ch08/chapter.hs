cattyConny :: String -> String -> String
cattyConny x y = x ++ " mrow " ++ y

flippy :: String -> String -> String
flippy = flip cattyConny

appedCatty :: String -> String
appedCatty = cattyConny "woops"

frappe :: String -> String
frappe = flippy "haha"

sumSeries :: (Eq a, Num a) => a -> a
sumSeries 0 = 0
sumSeries n = n + (sumSeries (n - 1))

sumMultiple :: (Integral a) => a -> a -> a
sumMultiple _ 0 = 0
sumMultiple x 1 = x
sumMultiple x y = x + (sumMultiple x (y - 1))

-- TOOD: This does not terminate
mc91 :: (Integral a) => a -> a
mc91 n 
  | n > 100 = n - 10
  | otherwise = mc91( mc91( (+ 11 n) ) )
