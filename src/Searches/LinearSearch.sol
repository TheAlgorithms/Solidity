// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Checks each element of the list until a match is found or the whole list has been searched.
 * @author [Priyda](https://github.com/priyda)
 */
contract LinearSearch {
    int256 result = -1;

    function search(uint256[] memory inputData, uint256 searchNumber)
        public
        returns (int256)
    {
        result = searchElement(inputData, searchNumber);
        return result;
    }

    /** thislinear search  will retun index of searchNumber if found else will return -1 **/

    function searchElement(uint256[] memory inputData, uint256 searchNumber)
        internal
        returns (int256)
    {
        for (uint256 i = 0; i < inputData.length; i++) {
            if (inputData[i] == searchNumber) {
                result = int256(i);
                return result;
            }
        }

        return result;
    }
}
