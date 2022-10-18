// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title sort given array using Quick sort.
 * @author priyda (https://github.com/priyda)
 * @dev Contract to demonstrate how quick sort is working.
 */

contract QuickSort {
    
    function sort(uint[] memory data) public  returns(uint[] memory) {

       quickSort(data, int(0), int(data.length - 1));
       return data;
    }
    
   /** Quicksort is a sorting algorithm based on the divide and conquer approach **/

    function quickSort(uint[] memory _arr, int left, int right) internal{
        int i = left;
        int j = right;
        if(i==j) return;
        uint pivot = _arr[uint(left + (right - left) / 2)];
        while (i <= j) {
            while (_arr[uint(i)] < pivot) i++;
            while (pivot < _arr[uint(j)]) j--;
            if (i <= j) {
                (_arr[uint(i)], _arr[uint(j)]) = (_arr[uint(j)], _arr[uint(i)]);
                i++;
                j--;
            }
        }
        if (left < j)
            quickSort(_arr, left, j);
        if (i < right)
            quickSort(_arr, i, right);
    }
}
