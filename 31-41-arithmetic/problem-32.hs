module Euclid where
import Prelude

-- uses Euclid's Algorithm for finding the greatest common divisor
-- (x, y) = (y, x % y)

myGCD :: Int -> Int -> Int
myGCD x 0 = x
myGCD 0 y = y
myGCD x y
    | x > y = myGCD y (x `mod` y)
    | otherwise = myGCD x (y `mod` x)
