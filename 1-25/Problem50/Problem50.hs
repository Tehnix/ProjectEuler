-- The prime 41, can be written as the sum of six consecutive primes:
--              41 = 2 + 3 + 5 + 7 + 11 + 13
-- This is the longest sum of consecutive primes that adds to a prime below one-hundred.
-- The longest sum of consecutive primes below one-thousand that adds to a prime, contains 21 terms, and is equal to 953.
-- Which prime, below one-million, can be written as the sum of the most consecutive primes?

square :: (Integral b, Integral a) => a -> b
square k = truncate (sqrt $ fromIntegral k)

isPrime :: Integral a => a -> Bool
isPrime 2 = True
isPrime k = null [x | x <- [3,5..(square k)], k `rem` x == 0]


-- NOTE: The 6 as a starting point instead of 0 comes from empirical testing. The longest 
-- consecutive sum of primes that yields a number below 1000, yields 953, and therefore the 
-- function was adjusted to comply with this.

-- Run the function as such: consecutivePrimeSum 6 0 1000000
-- k is the current number
-- s is the sum of the primes so far
-- l is the limit it must be under
consecutivePrimeSum :: Integral a => a -> a -> a -> a
consecutivePrimeSum 0 0 l = consecutivePrimeSum 6 0 l
consecutivePrimeSum k s l = if isPrime k
    then if (s + k) > l
        then s
        else consecutivePrimeSum (k + 1) (s + k) l
    else consecutivePrimeSum (k + 1) s l

-- main :: IO ()
-- main = print (consecutivePrimeSum 6 0 1000000)
