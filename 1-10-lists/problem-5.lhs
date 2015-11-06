> import Prelude

Reverse a list.

> myReverse :: [a] -> [a]
> myReverse [] = []
> myReverse [x] = [x]
> myReverse (x:xs) = [last(xs)] ++ (myReverse (init xs)) ++ [x]

> myReverse' :: [a] -> [a]
> myReverse' [] = []
> myReverse' (x:xs) = reverse xs ++ [x]
