// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/*
* @title: Array Addition.
* @author: Anthony (fps) https://github.com/fps8k.
* @dev:
* Contract to demonstrate how an array is added.
*/

contract AddArray
{
    // Set the first array.
    uint256[] public arr = [2, 8, 4, 5];

    /*
    * @dev:
    * Takes in an array of numbers and adds them and returns the cumultative total.
    */
    function addArr() public view returns(uint total)
    {
        // Initialize the total we need to return to 0.
        uint sum = 0;
        
        // Loop through the array.
        for (uint i = 0; i < arr.length; i++)
        {
            // On every element, add the value of the element to the current sum.
            // For sums > the maximum uint value, solidity versions > 0.8.0 will revert on overflow.
            sum += arr[i];
        }

        // Return the total.
        total = sum;
    }
}