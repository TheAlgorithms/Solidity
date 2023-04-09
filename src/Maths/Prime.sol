// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title Checks if a number is prime.
 * @author [Scânteie Alexandru (Inf3n0s)](https://github.com/Inf3n0s)
 * @dev  
 *  This contract checks if a number is prime.
 *  Eliminated all potential cases in which a number cannot be considered prime. 
 *  For instance, excluding all even numbers, with the exception of 2, from being prime.
 *  To achieve this, we increment the loop variable by 6 and check whether either i or i+2 is a factor of the number. 
 *  If a factor is found, the function will return false; otherwise, it will return true after the loop ends, which happens when the terminating condition i*i <= num is met.
 */

contract Prime {
/**
 * @dev Checks if a number is prime.
 * @param n The number to check.
 * @return if number is prime, it returns @ true, else it returns @ false.
 */

function isPrime(uint256 n) public pure returns (bool) {
    bool result = true;
    if (n <= 1) {
        return false;
    } else if (n == 2 || n == 3) {
        return true;
    } else if ((n % 2) == 0 || n % 3 == 0) {
        return false;
    } else {
        for (uint256 i = 5; (i * i) <= (n); i = (i + 6)) {
            if ((n % i) == 0 || (n % (i + 2) == 0)) {
                result = false;
                break;
            }
        }
    }
    return (result);
    }
}
