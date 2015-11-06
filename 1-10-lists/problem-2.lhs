> import Prelude

> myButLast :: [a] -> a
> myButLast [] = error "empty list"
> myButLast (x:(y:[])) = x
> myButLast (x:xs) = myButLast xs
