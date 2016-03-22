import Euclid
import Prelude

coprime :: Int -> Int -> Bool
coprime x y = (myGCD x y) == 1
