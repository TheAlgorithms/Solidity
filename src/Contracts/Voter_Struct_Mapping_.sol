// SPDX-License-Identifier: GPL-3.0

pragma solidity  ^0.8.0;

/**
 * @title how Struct and mapping.
 * @author [Priyda](https://github.com/priyda)
 * @dev Contract to demonstrate how constructor works.
 */

contract Voter {

    struct OptionPos{
        uint pos;
        bool exists;
    }

    string[] public options;
    uint[] public votes;
    mapping (address => bool) hasVoted;
    mapping (string => OptionPos) posOfOption;

    constructor(string[] memory _options){

        options= _options;
        votes= new uint[] (_options.length);
        //initilaize mapping
        for (uint i=0; i<options.length ;i++){
            OptionPos memory option =OptionPos(i,true);
            posOfOption[options[i]]=option;
        }
    }    


 
    function vote(string memory option) public{
        //If ivalid options , throw an error
        require(!hasVoted[msg.sender],"Already Voted");
        OptionPos memory optionPos =posOfOption[option ];
        require(optionPos.exists, "Invalid option");
        recordVote(optionPos.pos);
        
    }

    function recordVote (uint option) private{
        hasVoted[msg.sender]=true; 
        votes[option]=votes[option] +1;    

    }

    function getOption() public view returns (string[] memory){
        return options;
    }

      function getVotes() public view returns (uint[] memory){
        return votes;
    }
 }