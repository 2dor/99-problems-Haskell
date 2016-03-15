import Prelude

data Encoding a = Single a | Multiple Int a
    deriving Show

pack :: Eq a => [a] -> [[a]]
pack xs = foldr (append) [[]] xs
    where
        append y [[]] = [[y]]
        append y (zs:zss)
            | (y == head zs) = (y:zs):zss
            | otherwise = [y]:zs:zss

encodeAux :: [[a]] -> [Encoding a]
encodeAux [] = []
encodeAux (x:xs)
    | length x == 1 = (Single (head x)):(encodeAux xs)
    | otherwise = (Multiple (length x) (head x)):(encodeAux xs)

encodeModified :: Eq a => [a] -> [Encoding a]
encodeModified [] = []
encodeModified xs = encodeAux (pack xs)
