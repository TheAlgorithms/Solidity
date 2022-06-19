// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
* @title Array Multiplication.
* @author Anthony (fps) https://github.com/fps8k.
* @dev Contract to demonstrate how an array is multiplied.
*/


contract MulArray{
    /// @dev Set the first array.
    uint256[] public arr = [2, 8, 4, 5];

    /**
    * @dev Takes in an array of numbers and adds them and returns the cumultative product.
    * @return product which is the cumultative product of the array.
    */
    function mulArr() public view returns(uint product){
        /// @dev Initialize the total we need to return to 0.
        uint _product = 1;
        
        /// @dev Loop through the array.
        for (uint i = 0; i < arr.length; i++){
            /// @dev On every element, multiply the current _product with the value of the elementa.
            /// @dev For products > the maximum uint value, solidity versions > 0.8.0 will revert on overflow.
            _product *= arr[i];
        }

        /// @dev Return the product.
        product = _product;
    }
}
