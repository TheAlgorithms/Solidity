// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Events.
 * @author [Priyda](https://github.com/priyda)
 * @dev Contract to demonstrate events feature
 */
 
contract Events{
    event myEvent(address indexed sender, uint256 indexed amount, string message);
    
    function executeEvent(string memory _message) public payable returns(string memory){
        emit myEvent(msg.sender, msg.value, _message);
        return _message;
    }
}