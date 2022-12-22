// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../sumDigit.sol";

contract SumDigitTest is Test {
    // Target contract
    sumDigit sd;

    /// Test Params
    uint256 firstNo = 2;
    uint256 secondNo = 2;

    //  =====   Set up  =====
    function setUp() public {
        sd = new sumDigit();
        sd.firstNoSet(firstNo);
        sd.secondNoSet(secondNo);
    }

    /// @dev Test `add`

    function test_add() external {
        uint result = sd.add();
        uint expected = 4;
        assertEq(expected, result);
    }
}
