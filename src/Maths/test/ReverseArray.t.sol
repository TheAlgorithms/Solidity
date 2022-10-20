// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../ReverseArray.sol";

contract ReverseArrayTest is Test {
    // Target contract
    ReverseArray reverseArray;

    /// Test Params
    uint256[] private testArray = [202,27,123,1,66,76,2,55,111,455];

    function setUp() public {
        reverseArray = new ReverseArray();
    }

    /// @dev Test `reverseArray`

    function test_reverseArray() public {

        uint[] memory reversedArray = reverseArray.reverse(testArray);
        assertEq(reversedArray[0],455);
        assertEq(reversedArray[1],111);
        assertEq(reversedArray[2],55);
        assertEq(reversedArray[3],2);
        assertEq(reversedArray[4],76);
        assertEq(reversedArray[5],66);
        assertEq(reversedArray[6],1);
        assertEq(reversedArray[7],123);
        assertEq(reversedArray[8],27);
        assertEq(reversedArray[9],202);
    }
}
