module TupleFunctions  where

addEmUp2 :: Num a => (a, a) -> a
addEmUp2 (x, y) = x + y

addEmUp2Alt :: Num a => (a, a) -> a
addEmUp2Alt tup = (fst tup) + (snd tup)

fst3 :: (a,b,c) -> a
fst3 (x,_,_) = x

third3 :: (a,b,c) -> c
third3 (_,_,x) = x

k (x,y) = x
k1 = k ((4-1), 10)
k2 = k ("Three", (1 + 2))
k3 = k (3, True)

f :: (a,b,c) -> (d,e,f) -> ((a,d),(c,f))
f (a,b,c) (d,e,f) = ((a,d),(c,f))
