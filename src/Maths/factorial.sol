// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title This is a Solidity implementation to factorial.
 * @author [Wenceslas Sanchez](https://github.com/wenceslas-sanchez)
 */
contract Factorial {
    /**
     * @notice Compute the factorial of a number iteratively.
     *
     */
    function factoIterative(uint256 _n) public pure returns (uint256) {
        uint256 result = 1;

        for (uint256 i = 2; i <= _n; ++i) {
            result *= i;
        }

        return result;
    }

    /**
     * @notice Compute the factorial of a number recursively.
     *
     */
    function factoRecursive(uint256 _n) public pure returns (uint256) {
        uint256 result;

        if (_n == 1 || _n == 0) {
            result = 1;
        } else {
            result = _n * factoRecursive(_n - 1);
        }

        return result;
    }
}
