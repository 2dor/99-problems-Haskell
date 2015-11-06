> import Prelude

Find out whether a list is a palindrome.

> isPalindrome :: Eq a => [a] -> Bool
> isPalindrome [] = True
> isPalindrome [x] = True
> isPalindrome (x:xs) = x == (last xs) && isPalindrome (init xs)
