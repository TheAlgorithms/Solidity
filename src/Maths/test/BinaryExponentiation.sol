// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../BinaryExponentiation.sol";

contract BinaryExponentiationTest is Test {
    // Target contract
    BinaryExponentiation binaryExponentiation;

    //  =====   Set up  =====
    function setUp() public {
        binaryExponentiation = new BinaryExponentiation();
    }

    function testCalculatesBaseToThePowerOfExp(uint256 base, uint256 exp)
        public
    {
        // Arrange
        vm.assume(base != 0 && exp != 0);
        // keep the base and exponent low not to cause an overflow.
        vm.assume(base < 250 && exp < 32);

        uint256 expectedRes = base**exp;

        // Act
        uint256 res = binaryExponentiation.pow(base, exp);

        // Assert
        assertEq(res, expectedRes);
    }

    function testRevertsIfResultOverflows(uint256 base, uint256 exp) public {
        // Arrange
        vm.assume(base > 250 && exp > 32);

        // Assert
        vm.expectRevert(stdError.arithmeticError);

        // Act
        binaryExponentiation.pow(base, exp);
    }
}
