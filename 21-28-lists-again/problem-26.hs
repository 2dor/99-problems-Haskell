import Prelude
import Data.List

combinations :: [a] -> Int -> [[a]]
combinations _ 0 = [[]]
combinations [] _ = []
combinations xs n = [(xs !! i):ys | i <- [0..(length xs) - 1],
                                    ys <- combinations (drop (i + 1) xs) (n - 1)]
