import Prelude

duplicateNTimes :: [a] -> Int -> [a]
duplicateNTimes [] _ = []
duplicateNTimes (x:xs) n = (replicate n x) ++ (duplicateNTimes xs n)
