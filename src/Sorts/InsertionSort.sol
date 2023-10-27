// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title InsertionSOrt
 * @author [Yash9276](https://github.com/Yash9276)
 * @notice A contract that implements the insertion sort algorithm.
 * @dev It repeatedly takes an element from the unsorted part and inserts
 * it into its correct position in the sorted part of the array, 
*shifting the elements if necessary. It has an average and worst-case time complexity of O(n^2) but
* is efficient for small datasets or partially sorted data.
   
 */

contract InsertionSort {
    /* @notice Sorts the given array in increasing order.
     @param input The array to sort.
     @return output The resulting sorted array in increasing order
     */

    function sort(uint256[] memory myArray)
        public
        pure
        returns (uint256[] memory)
    {
        uint256 n = myArray.length;
        for (uint256 i = 1; i < n; i++) {
            uint256 key = myArray[i];
            int256 j = int256(i - 1);

            while (j >= 0 && int256(myArray[uint256(j)]) > int256(key)) {
                myArray[uint256(j + 1)] = myArray[uint256(j)];
                j--;
            }

            myArray[uint256(j + 1)] = key;
        }
        return myArray;
    }
}
