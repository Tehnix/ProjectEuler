"""
The prime 41, can be written as the sum of six consecutive primes:
              41 = 2 + 3 + 5 + 7 + 11 + 13
This is the longest sum of consecutive primes that adds to a prime below one-hundred.
The longest sum of consecutive primes below one-thousand that adds to a prime, contains 21 terms, and is equal to 953.
Which prime, below one-million, can be written as the sum of the most consecutive primes?

"""
import math


def isPrime(n):
    """Check if a number is a prime number."""
    for i in range(2, int(math.sqrt(n) + 1)):
        if n % i == 0 and n != i:
            return False
    return True

def consecutivePrimeSum(maxSum, currentSum, currentNumber):
    while (currentSum + currentNumber) < maxSum:
        if isPrime(currentNumber):
            currentSum += currentNumber
        currentNumber += 1
    return currentSum

print consecutivePrimeSum(1000000, 0, 6)
