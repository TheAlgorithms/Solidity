// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title Get the absolute value of an integer.
 * @author [Perelyn](https://github.com/Perelyn-sama)
 * @dev https://www.khanacademy.org/math/cc-sixth-grade-math/cc-6th-negative-number-topic/cc-6th-absolute-value/v/absolute-value-of-integers
 */
contract BubbleSort {
    function bubbleSort(uint256[] memory _arr)
        public
        pure
        returns (uint256[] memory sortedArr_)
    {
        uint256 length = _arr.length;
        bool noSwaps;

        for (uint256 i = length; i > 0; i--) {
            // flag for optimization
            noSwaps = true;
            // Number of passes
            for (uint256 j = 0; j < (i - 1); j++) {
                // compare the adjacent positions
                if (_arr[j] > _arr[j + 1]) {
                    // swap the numbers
                    uint256 lesser = _arr[j + 1];
                    uint256 higher = _arr[j];
                    _arr[j + 1] = higher;
                    _arr[j] = lesser;
                    noSwaps = false;
                }
            }
            if (noSwaps) {
                break;
            }
        }
        sortedArr_ = _arr;
    }
}
