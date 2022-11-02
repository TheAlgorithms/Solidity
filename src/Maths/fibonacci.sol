// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title This is a Solidity implementation to Fibonacci sequence problem.
 * @author [Wenceslas Sanchez](https://github.com/wenceslas-sanchez)
 * @dev Binet implementation is missing.
 */
contract Fibonacci {
    /**
     * @notice Computes the n-th (0-indexed) Fibonacci number using recursion.
     * @dev This method use a lot of gas to run. Recursive methods are not good ideas.
     * For instance with RemixIDE, its hard to go further 10th term.
     */
    function fibRecursiveTerm(uint256 _n) public pure returns (uint256) {
        uint256 result;

        if (_n < 2) {
            result = _n;
        } else {
            result = fibRecursiveTerm(_n - 1) + fibRecursiveTerm(_n - 2);
        }

        return result;
    }

    /**
     * @notice Computes the first n (0-indexed) Fibonacci numbers using recursion
     * @dev It is based on fibRecursiveTerm => consume a lot of gas.
     */
    function fibRecursive(uint256 _n) public pure returns (uint256[] memory) {
        uint256[] memory result = new uint256[](_n + 1);

        for (uint256 i = 0; i < _n + 1; i++) {
            result[i] = fibRecursiveTerm(i);
        }

        return result;
    }

    /**
     * @notice Computes the first n (0-indexed) Fibonacci numbers using memoization.
     * @dev Max computable term around 400.
     */
    function fibMemoization(uint256 _n) public pure returns (uint256[] memory) {
        uint256 cache_size;
        if (_n < 2) {
            cache_size = 2; // because we need to cache at least the first 2 values.
        } else {
            cache_size = _n + 1;
        }
        uint256[] memory cache = new uint256[](cache_size);
        uint256[] memory result = new uint256[](_n + 1);
        cache[0] = 0;
        cache[1] = 1;

        for (uint256 i = 0; i < _n + 1; i++) {
            if (i > 1) {
                cache[i] = cache[i - 1] + cache[i - 2];
            }
            result[i] = cache[i];
        }

        return result;
    }
}
