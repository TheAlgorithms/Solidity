// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/*
* @title: Array Multiplication.
* @author: Anthony (fps) https://github.com/fps8k.
* @dev:
* Contract to demonstrate how an array is multiplied.
*/

contract MulArray
{
    // Set the first array.
    uint256[] public arr = [2, 8, 4, 5];


    /*
    * @dev:
    * Takes in an array of numbers and adds them and returns the cumultative product.
    */
    function mulArr() public view returns(uint product)
    {
        // Initialize the total we need to return to 1.
        uint _product = 1;
        
        // Loop through the array.
        for (uint i = 0; i < arr.length; i++)
        {
            // On every element, multiply the current _product with the value of the elementa.
            // For products > the maximum uint value, solidity versions > 0.8.0 will revert on overflow.
            _product *= arr[i];
        }

        // Return the product.
        product = _product;
    }
}