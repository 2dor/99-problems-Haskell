import Prelude
import System.Random
import Data.List

randomPermutation :: [a] -> IO [a]
randomPermutation [] = return []
randomPermutation xs = do
    gen <- newStdGen
    return [xs !! indx |
            indx <- take (length xs) (nub (randomRs (0, length xs - 1) gen))]
