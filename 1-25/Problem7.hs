-- By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
-- What is the 10001st prime number?

isPrime k = null [x | x <- [2..k - 1], k `mod` x == 0]


-- Run the function as such: diffSquaresSum 0 0 10001 (It will take some time to brute force)
nthPrime k n t = if isPrime k
    then if (n - 1) == t
        then k
        else nthPrime (k + 1) (n + 1) t
    else nthPrime (k + 1) n t