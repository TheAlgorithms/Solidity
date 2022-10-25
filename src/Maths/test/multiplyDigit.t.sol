// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../multiplyDigit.sol";

contract MultiplyDigitTest is Test {
    // Target contract
    multiplyDigit md;

    /// Test Params
    int128 firstNo = 2;
    int128 secondNo = 2;

    //  =====   Set up  =====
    function setUp() public {
        md = new multiplyDigit();
        md.firstNoSet(firstNo);
        md.secondNoSet(secondNo);
    }

    /// @dev Test `multiply`

    function test_multiply() external {
        int128 result = md.multiply();
        int128 expected = 2 * 2;
        assertEq(expected, result);
    }
}
