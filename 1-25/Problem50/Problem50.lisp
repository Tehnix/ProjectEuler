; The prime 41, can be written as the sum of six consecutive primes:
;              41 = 2 + 3 + 5 + 7 + 11 + 13
; This is the longest sum of consecutive primes that adds to a prime below one-hundred.
; The longest sum of consecutive primes below one-thousand that adds to a prime, contains 21 terms, and is equal to 953.
; Which prime, below one-million, can be written as the sum of the most consecutive primes?

(defun isPrimeR (n x c)
     "Checks a numbers primality"
     (if (< x c)
       T
       (if (/= (rem n c) 0) 
         (isPrimeR n x (+ c 1))
         nil)))

(defun isPrime (n)
    "Wrapper for isPrimeR function"
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
