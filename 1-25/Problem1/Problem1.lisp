; Project Euler: Problem 1
; If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
; Find the sum of all the multiples of 3 or 5 below 1000.

; Run the function as such: (nNum 0 1)
(defun nNum (x n)
  "Sum of multiples of 3 or 5 below 1000"
  (if (= n 1000)
    x
  (if (or (zerop (rem n 3)) (zerop (rem n 5)))
      (nNum (+ x n) (+ n 1))
    (nNum x (+ n 1)))))
