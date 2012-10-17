-- The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
-- Find the sum of all the primes below two million.


square :: (Integral b, Integral a) => a -> b
square k = truncate (sqrt $ fromIntegral k)

isPrime :: Integral a => a -> Bool
isPrime k = null [x | x <- [2..(square k)], k `rem` x == 0]

-- Run the function as such: sumOfPrimes 2000000
sumOfPrimes :: Integral a => a -> a
sumOfPrimes n = sum [x | x <- [2..n], isPrime x]


-- main :: IO ()
-- main = print (sumOfPrimes 2000000)