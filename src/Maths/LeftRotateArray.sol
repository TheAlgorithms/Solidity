// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title Left Rotate Array "k" times.
 * @author Sumit Banik https://github.com/iSumitBanik
 * @dev Contract to demonstrate the left rotation of an array.
 */

contract LeftRotateArray {
    /**
     * @dev external function which takes in an array of numbers and input param "k" to left rotate k times.
     * @param _array array of numbers
     * @param k input param to left rotate k times.
     * @return _array => Left Rotated Array
     */
      function leftRotate(uint[] memory _array,uint k)
          external pure
          returns (uint[] memory){
              uint arrayLength = _array.length;
              uint index;

              for(index; index < k; ++index)
                  leftRotatebyOne(_array, arrayLength);

              return _array;
          }
    /**
     * @dev internal function which takes in an array of numbers and its length to left rotate one time.
     * @param _array array of numbers
     * @param length length of the array
     */
      function leftRotatebyOne(uint[] memory _array, uint length)
      internal
      pure
      {
          uint temp = _array[0];
          uint index;
        
          for(index; index < length - 1; ++index)
              _array[index] = _array[index + 1];
      
          _array[length-1] = temp;
      }
}
