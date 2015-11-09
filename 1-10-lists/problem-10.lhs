> import Prelude
> import Pack

(*) Run-length encoding of a list. Use the result of problem P09 to implement
the so-called run-length encoding data compression method. Consecutive duplicates
of elements are encoded as lists (N E) where N is the number of duplicates of the element E.

> encodeAux :: [[a]] -> [(Int, a)]
> encodeAux [] = []
> encodeAux (x:xs) = [((length x), head x)] ++ (encodeAux xs) 

> encode :: Eq a => [a] -> [(Int, a)]
> encode [] = []
> encode xs = encodeAux (pack xs)
