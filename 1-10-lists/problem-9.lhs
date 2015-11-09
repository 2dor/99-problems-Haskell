> module Pack where

> import Prelude

(**) Pack consecutive duplicates of list elements into sublists.
If a list contains repeated elements they should be placed in separate sublists.

> pack :: Eq a => [a] -> [[a]]
> pack xs = foldr (append) [[]] xs
>   where
>       append y [[]] = [[y]]
>       append y (zs:zss)
>           | (y == head zs) = (y:zs):zss
>           | otherwise = [y]:zs:zss
