-- 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
-- What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?


isDivisible :: Integral t => t -> Bool
isDivisible n = [0 | x <- [1..20]] == [n `mod` x | x <- [1..20]]

-- Run the function as such: nSmallDivide 232792540 (Else it would take forever. This proves that it will calculate it...)
nSmallDivide :: Integral t => t -> t
nSmallDivide 0 = nSmallDivide 1
nSmallDivide n = if isDivisible n
    then n
    else nSmallDivide (n+1)