import Prelude

data Encoded a = Single a | Multiple Int a
    deriving Show

decodeModified :: [Encoded a] -> [a]
decodeModified [] = []
decodeModified ((Single x):xs) = x:(decodeModified xs)
decodeModified ((Multiple n x):xs) = (replicate n x) ++ (decodeModified xs)
