-- The sum of the squares of the first ten natural numbers is: 12 + 22 + ... + 102 = 385
-- The square of the sum of the first ten natural numbers is: (1 + 2 + ... + 10)2 = 552 = 3025
-- Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025  385 = 2640.
-- Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.


sumSquares :: (Enum a, Num a) => a -> a
sumSquares n = sum [x^2 | x <- [1..n]]
squaresSum :: (Enum a, Num a) => a -> a
squaresSum n = (sum [x | x <- [1..n]])^2

-- Run the function as such: diffSquaresSum 100
diffSquaresSum :: (Enum a, Num a) => a -> a
diffSquaresSum n = (squaresSum n) - (sumSquares n)

-- main :: IO ()
-- main = print (diffSquaresSum 100)