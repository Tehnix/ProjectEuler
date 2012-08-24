-- By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
-- What is the 10001st prime number?


square :: (Integral b, Integral a) => a -> b
square k = truncate (sqrt $ fromIntegral k)

isPrime :: Integral a => a -> Bool
isPrime k = null [x | x <- [2..(square k)], k `rem` x == 0]

-- Run the function as such: diffSquaresSum 0 0 10001 (It will take some time to brute force)
nthPrime :: (Eq a1, Integral a, Num a1) => a -> a1 -> a1 -> a
nthPrime k n t = if isPrime k
    then if (n - 1) == t
        then k
        else nthPrime (k + 1) (n + 1) t
    else nthPrime (k + 1) n t