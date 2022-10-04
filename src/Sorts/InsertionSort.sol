// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract InsertionSort{
  
    function sort(uint[] memory data) public pure returns(uint[] memory) {
     
       insertionSort(data,  data.length );
        
        return data  ;
    }

/* Insertion sort is a sorting algorithm that places an unsorted
    * element at its suitable place in each iteration. */

    function insertionSort( uint [] memory _inputData, uint _size) public pure  {
            for (uint i = 1; i < _size; ++i) {
            uint key = uint (_inputData[i]);
            int256 _j = int256 (i - 1);
             uint  j = i - 1;
  
            /* Move elements of _inputData[0..i-1], that are
               greater than key, to one position ahead
               of their current position */
            while (_j >= 0 && _inputData[j] > key) {
                _inputData[j + 1] = _inputData[j];
                _j = _j - 1;
               if(_j!=-1){
                    j= uint256 (_j);
               }
            }
            _j=_j+1;
            j= uint256 (_j);
            _inputData[j] = key;
        }
    }
}
