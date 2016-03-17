import Prelude

split' :: [a] -> [a] -> Int -> [[a]]
split' firstList xs 0 = (reverse firstList):xs:[] -- return the result
split' firstList [] _ = (reverse firstList):[]:[]
split' firstList (x:xs) n = split' (x:firstList) xs (n - 1)

split :: Eq a => [a] -> Int -> [[a]]
split [] _ = []
split xs n = split' [] xs n
