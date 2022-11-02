// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Solidity program to demonstrate addition

// Creating a contract
contract sumDigit {
    // Declaring the state variables
    uint256 firstNo;
    uint256 secondNo;

    // Defining the function to set the value of the first variable
    function firstNoSet(uint256 x) public {
        firstNo = x;
    }

    // Defining the function to set the value of the second variable
    function secondNoSet(uint256 y) public {
        secondNo = y;
    }

    // Defining the function to add the two variables
    function add() public view returns (uint256) {
        uint256 Sum = firstNo + secondNo;

        // Sum of two variables
        return Sum;
    }
}
