> import Prelude

> elementAt :: [a] -> Int -> a
> elementAt [] n = error "empty list"
> elementAt xs n
>   | (n <= 0) || (n > (length xs)) = error "provided index is out of bounds"
>   | otherwise = getElementAt xs n
>       where
>           getElementAt (x:xs) 1 = x
>           getElementAt (x:xs) n = getElementAt xs (n - 1)
