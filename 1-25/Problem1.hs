-- Project Euler: Problem 1
-- If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
-- Find the sum of all the multiples of 3 or 5 below 1000.


-- Run the function as such: nNum 0 1
nNum :: Integral a => a -> a -> a
nNum x 1000 = x
nNum x n = if (n `mod` 3) == 0 || (n `mod` 5) == 0
    then nNum (x+n) (n+1) 
    else nNum x (n+1)
    
-- main :: IO ()
-- main = print (nNum 0 1)