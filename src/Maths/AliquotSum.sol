// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title Get the absoule value of an integer.
 * @author [Perelyn](https://github.com/Perelyn-sama)
 */
contract AliquotSum {
    /// Get the Aliquote sum of a positive integer
    function getAliquotSum(uint256 _n) public pure returns (uint256 result) {
        for (uint256 i = 1; i < _n - 1; i++) {
            _n % i == 0 ? result += i : i;
        }
        return result;
    }
}
