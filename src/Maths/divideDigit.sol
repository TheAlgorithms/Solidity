// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Solidity program to demontstrate the division operation

// Creating a contract
contract divideDigit {
    // Declaring the state variables
    int128 firstNo;
    int128 secondNo;

    // Defining a function to set the value of the first variable
    function firstNoSet(int64 x) public {
        firstNo = x;
    }

    // Defining function to set the value of the second variable
    function secondNoSet(int64 y) public {
        secondNo = y;
    }

    // Defining function to return the result
    function Divide() public view returns (int128) {
        int128 answer = firstNo / secondNo;
        return answer;
    }
}
