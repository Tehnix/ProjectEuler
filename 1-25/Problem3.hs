-- The prime factors of 13195 are 5, 7, 13 and 29.
-- What is the largest prime factor of the number 600851475143 ?

isPrime k = null [x | x <- [2..k - 1], k `mod` x  == 0]

-- Run the function as such: nPrime 600851475143 2 0
nPrime :: Integral a => a -> a -> a -> a
nPrime n c l = if n < c
    then l
    else if isPrime c
        then if (n `mod` c) == 0
            then nPrime (n `div` c) (c+1) c
            else nPrime n (c+1) l
        else nPrime n (c+1) l