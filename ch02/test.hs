module Learn where

sayHello :: String -> IO ()
sayHello x = putStrLn ("Hello, " ++ x ++ "!")

x = 10 * 5 + y

myResult = x * 5

y = 10

waxOn = x * 5 where x = y ^ 2; z = 7; y = z + 8

triple x = x * 3

waxOff x = triple x
