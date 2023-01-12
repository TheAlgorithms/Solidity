// SPDX-License-Identifier: GPL-3.0

pragma solidity  ^0.8.0;

/**
 * @title interface implementation.
 * @author [Priyda](https://github.com/priyda)
 * @dev Contract to demonstrate how interface works.
 */


interface SumInterface{
    
    struct Task{
        uint256 num1;
        uint256 num2;
        uint256 result;
    }
    
    
    function sum(uint256, uint256) external returns(uint256);
}

// implmenting interface
contract Calculator is SumInterface{
    function sum(uint256 _num1, uint256 _num2) override public pure returns(uint256 result){
        return (_num1 + _num2);
    }
}