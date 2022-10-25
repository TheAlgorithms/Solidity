// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../exponentiation.sol";

contract ExponentiationTest is Test {
    // Target contract
    Exponentiation exponentiation;

    /// Test Params
    uint16 firstNo = 2;
    uint16 secondNo = 2;

    //  =====   Set up  =====
    function setUp() public {
        exponentiation = new Exponentiation();
        exponentiation.firstNoSet(firstNo);
        exponentiation.secondNoSet(secondNo);
    }

    /// @dev Test `Expo`

    function test_GetModulo() external {
        uint256 result = exponentiation.Expo();
        uint256 expected = 2**2;
        assertEq(expected, result);
    }
}
