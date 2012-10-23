<?php

function isPrime($n) {
    if ($n === 2) {
        return true;
    }
    for ($i=3; $i <= (sqrt($n)+1); $i += 2) {
        if ($n % $i === 0 && $n !== $i) {
            return false;
        }
    }
    return true;
}

function consecutivePrimeSum($maxSum, $currentSum, $currentNumber) {
    while (($currentSum + $currentNumber) < $maxSum) {
        if (isPrime($currentNumber)) {
            $currentSum += $currentNumber;
        }
        $currentNumber++;
    }
    return $currentSum;
}

print consecutivePrimeSum(1000000, 0, 6);

?>
