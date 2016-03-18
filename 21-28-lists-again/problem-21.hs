import Prelude

insertAt :: a -> [a] -> Int -> [a]
insertAt x [] _ = undefined
insertAt x xs n
    | n < 0 = undefined
    | n > (length xs + 1) = undefined
    | otherwise = (take (n - 1) xs) ++
                  (x:(drop (n - 1) xs))
