import Prelude

isPrime :: Int -> Bool
isPrime n
    | n <= 0 = error "You must insert a natural number.\n"
    | otherwise = length [i | i <- [1..n], n `mod` i == 0] == 2

dividesN :: Int -> [Int] -> [Int]
dividesN n xs = [x | x <- xs, n `mod` x == 0]

primeFactors :: Int -> [Int]
primeFactors 1 = []
primeFactors n
    | n <= 0 = error "n must be positive.\n"
    | otherwise = (minimum (dividesN n (filter isPrime [1..n]))):(primeFactors (n `div` (minimum (dividesN n (filter isPrime [1..n])))))
