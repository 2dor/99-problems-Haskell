import Prelude

removeAt :: [a] -> Int -> (a, [a])
removeAt [] _ = undefined
removeAt xs n
    | n > length (xs) = undefined
    | n <= 0 = undefined
    | otherwise = (xs !! (n - 1), (take (n - 1) xs) ++ (drop n xs))
