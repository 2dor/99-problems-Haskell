import Prelude
-- Determine whether a given integer number is prime.
-- Ineffient method
isPrime :: Int -> Bool
isPrime n
    | n <= 0 = error "You must insert a natural number.\n"
    | otherwise = length [i | i <- [1..n], n `mod` i == 0] == 2
