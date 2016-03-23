import Prelude

coprime :: Int -> Int -> Bool
coprime a b = (gcd a b) == 1

eulerTotient :: Int -> Int
eulerTotient n
    | n <= 0 = error "The argument must be positive.\n"
    | otherwise = length [x | x <- [0..n], (coprime x n)]
