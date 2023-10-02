// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title find the index position of a value in an array of sorted numbers
 * @author [Chiadikaob](https://github.com/Chiadikaobixo)
 * @dev https://en.wikipedia.org/wiki/Binary_search_algorithm
 */

/** @dev Binary search is a more faster form of searching with
 * a timecomplexity of O(LogN), and it works on only sorted
 * arrays. Rather than eliminating one element at a time, binary
 * search eliminate half of the remaining elements at a time.
 */
contract BinarySearch {
    uint256 value;
    uint256[] _nums;

    // set the value to lookup in the array
    function setValue(uint256 x) public {
        value = x;
    }

    // set the array of sorted numbers
    function setArray(uint256[] memory num) public {
        _nums = num;
    }

    // returns the index position of the value in the array
    function printResult() public view returns (uint256 result) {
        uint256 minimum = 0;
        uint256 maximum = _nums.length - 1;

        while (minimum <= maximum) {
            uint256 middle = (minimum + maximum) / 2;
            uint256 currentElement = _nums[middle];
            if (currentElement < value) {
                minimum = middle + 1;
            } 
            else if (currentElement > value) {
                if (middle == 0) {
                    maximum = 0;
                } else {
                    maximum = middle - 1;
                }
            } else {
                result = int256(middle);
                // return the index position of the value in the array
                return result;
            }
        }
        return -1;
    }
}
