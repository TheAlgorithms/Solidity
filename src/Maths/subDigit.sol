// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Solidity program to demonstrate the subtraction

// In Subtraction, we could have used any value of Integer
// (int16 to int256) but all the operands must be of the same
// data types (same bits Integers).

// Creating a contract
contract subDigit {
    // Initializing the state variables
    int16 firstNo = 2;
    int16 secondNo = 10;

    // Defining a function to subtract two numbers
    function Sub() public view returns (int16) {
        int16 ans = firstNo - secondNo;

        // Difference amount
        return ans;
    }
}
