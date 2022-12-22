// SPDX-License-Identifier: GPL-3.0

pragma solidity  ^0.8.0;

/**
 * @title interface implementation.
 * @author [Priyda](https://github.com/priyda)
 * @dev Contract to demonstrate how interface works.
 */


interface SumInterface{
    
    struct Task{
        uint256 a;
        uint256 b;
        uint256 result;
    }
    
    enum Difficulty {difficult, easy}
    
    function sum(uint256, uint256) external returns(uint256);
}


contract Calculator is SumInterface{
    function sum(uint256 _a, uint256 _b) override public pure returns(uint256 result){
        return (_a + _b);
    }
}