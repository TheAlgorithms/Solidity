// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
* @title Array Addition.
* @author Anthony (fps) https://github.com/fps8k.
* @dev Contract to demonstrate how an array is added.
*/

contract AddArray{
    /// @dev Set the first array.
    uint256[] public arr = [2, 8, 4, 5];

    /**
    * @dev Takes in an array of numbers and adds them and returns the cumultative total.
    * @return total => sum of array.
    */
    function addArr() public view returns(uint total){
        /// @dev Initialize the total we need to return to 0.
        uint sum = 0;
        
        /// @dev Loop through the array.
        for (uint i = 0; i < arr.length; i++){
            /// @dev On every element, add the value of the element to the current sum.
            /// @dev For sums > the maximum uint value, solidity versions > 0.8.0 will revert on overflow.
            sum += arr[i];
        }

        /// @dev Return the total.
        total = sum;
    }
}

