// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title Array Addition.
 * @author [Anthony (fps)](https://github.com/fps8k)
 * @dev Contract to demonstrate how an array is added.
 */

contract AddArray {
    /**
     * @dev Takes in an array of numbers and adds them and returns the cumultative total.
     * @param _arr array of numbers
     * @return total => sum of array.
     */
    function addArr(uint256[] memory _arr) public pure returns (uint256 total) {
        /// @dev Initialize the total we need to return to 0.
        uint256 sum = 0;

        /// @dev Loop through the array.
        for (uint256 i = 0; i < _arr.length; i++) {
            /// @dev On every element, add the value of the element to the current sum.
            /// @dev For sums > the maximum uint value, solidity versions > 0.8.0 will revert on overflow.
            sum += _arr[i];
        }

        /// @dev Return the total.
        total = sum;
    }
}
