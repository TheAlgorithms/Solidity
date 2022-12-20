// SPDX-License-Identifier: MIT

pragma solidity  ^0.8.0;

/**
 * @title sort given array using Quick sort.
 * @author [Priyda](https://github.com/priyda)
 * @dev Contract to demonstrate how constructor works.
 */

contract Voter {

    string[] public options;
    uint[] public votes;

    constructor(string[] memory _options){

        options= _options;
        votes= new uint[] (_options.length);
    }    
 
    function vote(uint option) public{

        votes[option]=votes[option] +1;    
    }

      function getOption() public view returns (string[] memory){
        return options;
    }

      function getVotes() public view returns (uint[] memory){
        return votes;
    }
 }