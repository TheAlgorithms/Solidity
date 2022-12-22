// SPDX-License-Identifier: GPL-3.0

pragma solidity  ^0.8.0;

/**
 * @title how Struct and mapping.
 * @author [Priyda](https://github.com/priyda)
 * @dev Contract to demonstrate Usage of struct and mapping.
 */

contract Voter {

//declaring a struct to hold position of option and if it existed
    struct OptionPos{
        uint pos;
        bool exists;
    }

    string[] public options;
    uint[] public votes;
    //mapping to track who has already votes
    mapping (address => bool) hasVoted;
    mapping (string => OptionPos) posOfOption;

//Constructor to initialize voting options and struct 
    constructor(string[] memory _options){

        options= _options;
        votes= new uint[] (_options.length);
        //initilaize mapping
        // For example 
        for (uint i=0; i<options.length ;i++){
            OptionPos memory option =OptionPos(i,true);
            posOfOption[options[i]]=option;
        }
    }    


/**
 * Keep track of all votes and also doesn't allow duplicate votes
 */
    function vote(string memory option) public{
        //If voter has already voted use hasVoted mapping , throw an error
        require(!hasVoted[msg.sender],"Already Voted");
        OptionPos memory optionPos =posOfOption[option ];
        //check if valid option has been  vote 
        require(optionPos.exists, "Invalid option");
        recordVote(optionPos.pos);
        
    }

// this method keep track of who already voted and keep tally of total votes
    function recordVote (uint option) private{
        hasVoted[msg.sender]=true; 
        votes[option]=votes[option] +1;    

    }
//Function to get al voting options
    function getOption() public view returns (string[] memory){
        return options;
    }

//Function to get all votes
      function getVotes() public view returns (uint[] memory){
        return votes;
    }
 }