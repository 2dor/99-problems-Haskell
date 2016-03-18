import Prelude

range :: Int -> Int -> [Int]
range l r
    | l > r = error "The left index cannot be greater than the right index!"
    | l == r = r:[]
    | otherwise = l:(range (l + 1) r)
