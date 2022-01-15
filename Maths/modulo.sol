// Solidity program to demonstrate the Modulus operation
pragma solidity ^0.6.6;

// Creating a contract
contract Modulo {
    // Declaring state variables
    uint256 firstNo;
    uint256 secondNo;

    // Defining a function to set the value of the first variable
    function firstNoSet(uint256 x) public {
        firstNo = x;
    }

    // Defining a function to set the value of the second variable
    function secondNoSet(uint256 y) public {
        secondNo = y;
    }

    // Defining a function to return the modulus value
    function Modulo() public view returns (uint256) {
        uint256 answer = firstNo % secondNo;
        return answer;
    }
}
