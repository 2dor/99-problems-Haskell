import Prelude

rotate :: [a] -> Int -> [a]
rotate [] _ = []
rotate xs n = (drop (n `mod` (length xs)) xs) ++
                    (take (((length xs) + n) `mod` (length xs)) xs) 
