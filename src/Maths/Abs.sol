// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title Get the absolute value of an integer.
 * @author [Perelyn](https://github.com/Perelyn-sama)
 * @dev https://www.khanacademy.org/math/cc-sixth-grade-math/cc-6th-negative-number-topic/cc-6th-absolute-value/v/absolute-value-of-integers
 */
contract Abs {
    /// Pass in a number and get it's absolute value
    function getAbs(int256 _n) public pure returns (int256 result) {
        if (_n < 0) {
            result = -(_n);
        } else {
            result = _n;
        }
    }
}
