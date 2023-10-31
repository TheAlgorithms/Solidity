// SPDX-License-Identifier: MIT

pragma solidity  ^0.8.0;

/**
 * @title longest common subsequence (LCS) problem
 * @author [Priyda](https://github.com/priyda)
 */
 
contract LCS {
    // We use a mapping to store the results of each subproblem
    mapping(uint => mapping(uint => uint)) public cache;

    function lcs(string memory a, string memory b, uint m, uint n) public view returns (uint) {
        // Check if the result is already stored in the cache
        if (cache[m][n] != 0) {
            return cache[m][n];
        }
        // If either string is empty, the LCS is 0
        if (m == 0 || n == 0) {
            return 0;
        }
        // If the last characters of the strings match, add 1 to the LCS
        // of the strings without the last character
        if (a[m - 1] == b[n - 1]) {
            uint result = 1 + lcs(a, b, m - 1, n - 1);
            // Store the result in the cache
            cache[m][n] = result;
            return result;
        }
        // Otherwise, the LCS is the maximum of the LCS of the strings
        // without the last character of each string
        uint result = max(lcs(a, b, m, n - 1), lcs(a, b, m - 1, n));
        // Store the result in the cache
        cache[m][n] = result;
        return result;
    }

    // Helper function to find the maximum of two unsigned integers
    function max(uint a, uint b) private view returns (uint) {
        return a > b ? a : b;
    }
}
