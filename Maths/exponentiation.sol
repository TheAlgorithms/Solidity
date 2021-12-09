// Solidity program to demonstrate the exponentiation operation
pragma solidity ^0.6.6;

// Creating a contract
contract gfgExpo
{
	// Declaring the state variables
	uint16 firstNo;
	uint16 secondNo;

	// Defining the first function to set the value of first variable
	function firstNoSet(uint16 x) public
	{
		firstNo = x;
	}
	
	// Defining the function to set the value of the second variable
	function secondNoSet(uint16 y) public
	{
		secondNo = y;
	}
	
	// Defining the function to calculate the exponent
	function Expo() view public returns (uint256) {
		uint256 answer = firstNo ** secondNo ;
		return answer;
	}
}
