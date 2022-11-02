// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title String Matching.
 * @author [Sreek](https://github.com/sreekar9601)
 * @dev Contract to demonstrate matching of two strings.
 */

contract StringMatch {
    string firstString;
    string secondString;

    function setFirstString(string memory _firstString) public {
        firstString = _firstString;
    }

    function setSecondString(string memory _secondString) public {
        secondString = _secondString;
    }

    function stringMatch() public view returns (bool) {
        if (
            keccak256(abi.encodePacked(firstString)) ==
            keccak256(abi.encodePacked(secondString))
        ) {
            return true;
        }
        return false;
    }
}
