// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title returns an array of sorted numbers
 * @author [Chiadikaobi](https://github.com/Chiadikaobixo)
 * @dev https://en.wikipedia.org/wiki/Selection_sort
 */

/** @dev Selection sort is a sorting algorithm, whereby you place
 * the smaller values into sorted position one at a time.
 */
contract SelectionSort {
    function selectionSort(uint256[] memory _nums)
        public
        pure
        returns (uint256[] memory sortedArray)
    {
        for (uint256 i = 0; i < _nums.length; i++) {
            uint256 lowest = i;
            for (uint256 j = i + 1; j < _nums.length; j++) {
                if (_nums[j] < _nums[lowest]) {
                    lowest = j;
                }
            }
            // swap
            uint256 min = _nums[i];
            _nums[i] = _nums[lowest];
            _nums[lowest] = min;
        }
        sortedArray = _nums;
        // returns the sorted array
        return sortedArray;
    }
}
