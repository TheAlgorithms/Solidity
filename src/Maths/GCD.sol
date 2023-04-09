// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title Find the greatest common divisor of two numbers.
 * @author [Scânteie Alexandru (Inf3n0s)](https://github.com/Inf3n0s)
 * @dev   
 *   This contract finds the greatest common divisor of two numbers.
 *   The algorithm used is the Euclidean algorithm.
 *   First method uses recursion, second method uses a while loop.
 */

contract GCD {
/*
 * @dev Find the greatest common divisor of two numbers.
 * @param a The first number.
 * @param b The second number.
 * @return The greatest common divisor of the two numbers.
 */

function gcdR(uint256 a, uint256 b) public pure returns (uint256) {
    if (a == 0) {
        return b;
    }
    return gcdR(b % a, a);
}

function gcdI(uint256 a, uint256 b) public pure returns (uint256) {
    while (a != 0) {
        (a, b) = (b % a, a);
    }
    return b;
}

}
