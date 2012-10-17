/*
 * The prime 41, can be written as the sum of six consecutive primes:
 *               41 = 2 + 3 + 5 + 7 + 11 + 13
 * This is the longest sum of consecutive primes that adds to a prime below one-hundred.
 * The longest sum of consecutive primes below one-thousand that adds to a prime, contains 21
 * terms, and is equal to 953.
 * Which prime, below one-million, can be written as the sum of the most consecutive primes?
 */
public class Problem50 {
    public static void main(String[] args) {
        int MAX_SUM = 1000000;
        int currentSum = 0;
        int currentNumber = 6;
        
        while ((currentSum + currentNumber) < MAX_SUM) {
            if (isPrime(currentNumber)) {
                currentSum += currentNumber;
            }
            currentNumber++;
        }
        System.out.println(currentSum);
    }
    
    public static boolean isPrime(int n){
        for(int i = 2; i <= Math.sqrt(n); i++){
            if (n % i == 0 && n != i) {
                return false;
            }
        }
       return true;
    }
}