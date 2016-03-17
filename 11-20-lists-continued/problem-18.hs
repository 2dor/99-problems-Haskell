import Prelude

slice :: [a] -> Int -> Int -> [a]
slice xs begin end = take (end - begin + 1) (drop (begin - 1) xs)

slice1 :: [a] -> Int -> Int -> [a]
slice1 xs begin end = drop (begin - 1) (take end xs)
