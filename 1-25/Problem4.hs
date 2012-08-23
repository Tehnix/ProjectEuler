-- A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91  99.
-- Find the largest palindrome made from the product of two 3-digit numbers.


isPalindrome :: Show a => a -> Bool
isPalindrome s = if (show s) == (reverse (show s)) 
    then True
    else False

nPalindrome :: (Eq a, Num a, Show a) => a -> a -> [a] -> [a]
nPalindrome n c l = if even (length (show (n * c))) && isPalindrome (n * c)
    then if c == 100
        then nPalindrome (n-1) 999 (l ++ [(n * c)])
        else if n == 100 
            then l
            else nPalindrome n (c-1) (l ++ [(n * c)])
    else if c == 100
        then nPalindrome (n-1) 999 l
        else if n == 100 
            then l
            else nPalindrome n (c-1) l

-- Run the function as such: maxPalindrom
maxPalindrom :: Integer
maxPalindrom = maximum (nPalindrome 999 999 [])