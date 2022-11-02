// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title MergeSort
 * @author [xeno097](https://github.com/xeno097)
 * @notice A contract that implements the mergesort algorithm.
 * @dev This algorithm allows to sort an array by recursively
 * splitting it into smaller sub-arrays of 1 elements and
 * then merging them into sorted sublists until only one array
 * remains.
 */

contract MergeSort {
    /// @notice Sorts the given array in increasing order.
    /// @param input The array to sort.
    /// @return output The resulting sorted array in increasing order.
    function sort(uint256[] calldata input)
        public
        pure
        returns (uint256[] memory)
    {
        uint256 length = input.length;

        // If the current array has 1 or 0 elements it is already sorted.
        if (length < 2) {
            return input;
        }

        // Split the array in half and sort the resulting sub-arrays.
        uint256 halfSize = length / 2;
        uint256[] memory sortedFirstHalf = sort(input[:halfSize]);
        uint256[] memory sortedSecondHalf = sort(input[halfSize:]);

        // Merge the sorted sub-arrays
        return merge(sortedFirstHalf, sortedSecondHalf);
    }

    /// @notice Takes two arrays and returns a single sorted array using the input elements.
    /// @param first The first array to be used to build the result.
    /// @param second The second array to be used to build the result.
    /// @return output The sorted array built using the inputs.
    function merge(uint256[] memory first, uint256[] memory second)
        internal
        pure
        returns (uint256[] memory)
    {
        uint256 idx = 0;
        uint256 idx1 = 0;
        uint256 idx2 = 0;
        uint256 firstLength = first.length;
        uint256 secondLength = second.length;
        uint256[] memory result = new uint256[](firstLength + secondLength);

        /**
         * Insert elements from both arrays into the result array until
         * all the elements of one of them have been inserted.
         */
        for (; idx1 < firstLength && idx2 < secondLength; idx++) {
            if (first[idx1] < second[idx2]) {
                result[idx] = first[idx1];
                idx1++;
            } else {
                result[idx] = second[idx2];
                idx2++;
            }
        }

        // Consume any remaining element from the first array.
        for (; idx1 < firstLength; idx1++) {
            result[idx] = first[idx1];
            idx++;
        }

        // Consume any remaining element from the second array.
        for (; idx2 < secondLength; idx2++) {
            result[idx] = second[idx2];
            idx++;
        }

        return result;
    }
}
