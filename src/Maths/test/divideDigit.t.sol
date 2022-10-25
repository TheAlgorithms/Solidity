// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../divideDigit.sol";

contract DivideDigitTest is Test {
    // Target contract
    divideDigit dd;

    /// Test Params
    int64 firstNo = 2;
    int64 secondNo = 2;

    //  =====   Set up  =====
    function setUp() public {
        dd = new divideDigit();
        dd.firstNoSet(firstNo);
        dd.secondNoSet(secondNo);
    }

    /// @dev Test `Divide`

    function test_Divide() external {
        int128 result = dd.Divide();
        int128 expected = 2/2;
        assertEq(expected, result);
    }
}
