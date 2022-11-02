// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../armstrongNumber.sol";

contract ArmstrongNumberTest is Test {
    // Target contract
    ArmstrongNumber armstrongNumber;

    //  =====   Set up  =====
    function setUp() public {
        armstrongNumber = new ArmstrongNumber();
    }

    //  =====   Functionality tests   =====

    /// @dev Test `isArmstrongNumber`

    /// Should pass if num is an armstrong number
    function test_IsArmstrongNumber() public {
        uint256 num = 153;

        bool isTrue = armstrongNumber.isArmstrongNumber(num);
        assertEq(true, isTrue);
    }

    /// Should pass if num is not an armstrong number
    function test_IsNotArmstrongNumber() public {
        uint256 num = 154;

        bool isFalse = armstrongNumber.isArmstrongNumber(num);
        assertEq(false, isFalse);
    }
}
