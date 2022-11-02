// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Solidity program to demonstrate the multiplication

contract multiplyDigit {
    int128 firstNo;
    int128 secondNo;

    function firstNoSet(int128 x) public {
        firstNo = x;
    }

    function secondNoSet(int128 y) public {
        secondNo = y;
    }

    function multiply() public view returns (int128) {
        int128 answer = firstNo * secondNo;
        return answer;
    }
}
