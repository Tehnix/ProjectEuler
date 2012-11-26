-- Some positive integers n have the property that the sum [ n + reverse(n)
-- ] consists entirely of odd (decimal) digits. For instance, 36 + 63 = 99 and
-- 409 + 904 = 1313. We will call such numbers reversible; so 36, 63, 409, and
-- 904 are reversible. Leading zeroes are not allowed in either n or
-- reverse(n).
--
-- There are 120 reversible numbers below one-thousand.
--
-- How many reversible numbers are there below one-billion (109)?

import Data.Char (digitToInt)

isAllOdd :: [Char] -> Bool
isAllOdd [] = True
isAllOdd (x:xs) = if even $ digitToInt x
    then False
    else isAllOdd xs

isValid :: Int -> Bool
isValid n = if head (reverse (show n)) == '0'
    then False
    else isAllOdd $ show (n + (read (reverse (show n)) :: Int))

reversible :: Int -> Int
reversible max = reversible' 0 max 0

reversible' :: Int -> Int -> Int -> Int
reversible' n max count | n >= max  = count
                        | isValid n = reversible' (n + 1) max (count + 1)
                        | otherwise = reversible' (n + 1) max count

main :: IO ()
main = print $ reversible 1000000000


