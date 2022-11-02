// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../subDigit.sol";

contract SubDigitTest is Test {
    // Target contract
    subDigit sd;

    /// Test Params
    uint256 firstNo = 2;
    uint256 secondNo = 2;

    //  =====   Set up  =====
    function setUp() public {
        sd = new subDigit();
    }

    /// @dev Test `sub`

    function test_sub() external {
        int result = sd.Sub();
        int expected = -8;
        assertEq(expected, result);
    }
}
