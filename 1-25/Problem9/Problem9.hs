-- A Pythagorean triplet is a set of three natural numbers, a < b < c, for which, a^2 + b^2 = c^2
-- For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
-- There exists exactly one Pythagorean triplet for which a + b + c = 1000.
-- Find the product abc.


pC :: Num a => a -> a -> a -> a
pC a b n = n - (a + b)

pTriplet :: (Eq a, Fractional a, Show a) => a -> a -> a -> [Char]
pTriplet a b n = if a^2 + b^2 == (pC a b n)^2 && a + b + (pC a b n) == n
    then (show a) ++ " * " ++ (show b) ++ " * " ++ (show (pC a b n)) ++ " = " ++ (show (a * b * (pC a b n)))
    else if a == (n / 2)
        then pTriplet 1 (b+1) n
        else pTriplet (a+1) b n
        

-- main :: IO ()
-- main = print (pTriplet 1 1 1000)