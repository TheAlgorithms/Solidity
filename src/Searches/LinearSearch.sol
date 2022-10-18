// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract LinearSearch {
    
    int result=-1;
    function search(uint[] memory inputData, uint searchNumber) public  returns(int ) {

    result=   searchElement(inputData,  searchNumber);
       return result;
    }
    
   /** thislinear search  will retun index of searchNumber if found else will return -1 **/

    function searchElement(uint[] memory inputData, uint searchNumber) internal returns (int )  {

        for(uint i=0;i<inputData.length;i++){
            if(inputData[i]==searchNumber){
                result=int(i);
                return result;
            }
        }
     
       return result;
    }
}
