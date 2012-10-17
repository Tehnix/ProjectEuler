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
            if(n % i == 0 && n != i) {
                return false;
            }
        }
       return true;
    }
}