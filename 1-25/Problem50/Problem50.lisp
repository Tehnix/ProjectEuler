(defun isPrimeR (n x c)
     "Checks a numbers primality"
     (if (< x c)
       T
       (if (/= (rem n c) 0) 
         (isPrimeR n x (+ c 1))
         nil)))

(defun isPrime (n)
    "Wrapper for isPrime' function"
    (isPrimeR n (/ n 2) 2))

(defun consecutivePrimeSumR (k s l)
  "Returns the longest consecutive sum of primes under maxSum."
  (if (isPrime k)
    (if (> (+ s k) l)
      s
      (consecutivePrimeSumR (+ k 1) (+ s k) l))
    (consecutivePrimeSumR (+ k 1) s l)))

(defun consecutivePrimeSum (l)
  "Wrapper for consecutivePrimeSumR"
  (consecutivePrimeSumR 6 0 l))

(consecutivePrimeSum 1000)
