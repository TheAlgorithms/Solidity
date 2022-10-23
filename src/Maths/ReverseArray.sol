// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/**
 * @title Array Reversal.
 * @author [Sumit Banik](https://github.com/iSumitBanik)
 * @dev Contract to demonstrate how an array is reversed.
 */

contract ReverseArray {
    /**
     * @dev internal function which takes in an array of numbers,start and end index,as an ouput returns the reversed array.
     * @param _array => array of numbers
     * @param start => start index of the array
     * @param end => ending index of the array
     * @return _array => reversed array.
     */
    function _reverseArray(
        uint256[] memory _array,
        uint256 start,
        uint256 end
    ) internal pure returns (uint256[] memory) {
        while (start < end) {
            (_array[start], _array[end]) = (_array[end], _array[start]);
            start++;
            end--;
        }

        return _array;
    }

    /**
     * @dev external function which takes in an array of numbers and as an ouput returns the reversed array.
     * @param _array => array of numbers
     * @return _array => reversed array using the _reverseArray internal function.
     */
    function reverse(uint256[] memory _array)
        external
        pure
        returns (uint256[] memory)
    {
        uint256 end = (_array.length) - 1;
        return _reverseArray(_array, 0, end);
    }
}
