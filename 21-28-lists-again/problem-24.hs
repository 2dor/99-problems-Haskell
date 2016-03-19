import Prelude
import System.Random
import Data.List

lottoSelect :: Int -> Int -> IO [Int]
lottoSelect k n
    | k < 0 || n <= 0 = error "k has to be positive and n non-negative."
    | otherwise = do
        gen <- newStdGen
        return (take k (nub (randomRs (1, n) gen)))
