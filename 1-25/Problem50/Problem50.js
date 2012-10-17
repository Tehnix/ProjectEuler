/*
 * The prime 41, can be written as the sum of six consecutive primes:
 *               41 = 2 + 3 + 5 + 7 + 11 + 13
 * This is the longest sum of consecutive primes that adds to a prime below one-hundred.
 * The longest sum of consecutive primes below one-thousand that adds to a prime, contains 21
 * terms, and is equal to 953.
 * Which prime, below one-million, can be written as the sum of the most consecutive primes?
 */

isPrime = function(n) {
    for (var i=2; i <= Math.sqrt(n); i++) {
        if (n % i == 0 && n != i) {
            return false;
        }
    }
    return true;
};

consecutivePrimeSum = function(maxSum, currentSum, currentNumber) {
    while ((currentSum + currentNumber) < maxSum) {
        if (isPrime(currentNumber)) {
            currentSum += currentNumber;
        }
        currentNumber++;
    };
    return currentSum;
};

console.log(consecutivePrimeSum(1000000, 0, 6));