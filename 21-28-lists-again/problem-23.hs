import Prelude
import System.Random

-- when selecting a generator, choose newStdGen instead of genStdGen in order
-- for the generator to be initialized with a different seed every time
randomSelect :: [a] -> Int -> IO [a]
randomSelect [] _ = return []
randomSelect xs n
    | n < 0 = error "n must be non-negative."
    | otherwise = do
        gen <- newStdGen
        return (take n [ xs !! indx | indx <- randomRs (0, (length xs) - 1) gen])
