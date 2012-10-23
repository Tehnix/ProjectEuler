<?php

function isPrime($n) {
    for ($i=2; $i <= (sqrt($n)+1); $i++) {
        if ($n % $i == 0 && $n != $i) {
            return false;
        }
    }
    return true;
}

function consecutivePrimeSum($maxSum, $currentSum, $currentNumber) {
    while (($currentSum + $currentNumber) < $maxSum) {
        if (($currentSum + $currentNumber) > $maxSum) {
            break;
        }
        if (isPrime($currentNumber)) {
            $currentSum += $currentNumber;
        }
        $currentNumber++;
    }
    return $currentSum;
}

print consecutivePrimeSum(1000000, 0, 6);

?>
