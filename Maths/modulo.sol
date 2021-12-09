// Solidity program to demonstrate the Modulus operation
pragma solidity ^0.6.6;

// Creating a contract
contract Modulo
{
	// Declaring state variables
	uint firstNo;
	uint secondNo;
	
	// Defining a function to set the value of the first variable
	function firstNoSet(uint x) public
	{
		firstNo = x;
	}
	
	// Defining a function to set the value of the second variable
	function secondNoSet(uint y) public
	{
		secondNo = y;
	}
	
	// Defining a function to return the modulus value
	function Modulo() view public returns (uint)
	{
		uint answer = firstNo % secondNo;
		return answer;
	}
}
