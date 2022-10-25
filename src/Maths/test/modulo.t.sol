// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../modulo.sol";

contract ModuloTest is Test {
    // Target contract
    Modulo modulo;

    /// Test Params
    uint256 firstNo = 2;
    uint256 secondNo = 2;

    //  =====   Set up  =====
    function setUp() public {
        modulo = new Modulo();
        modulo.firstNoSet(firstNo);
        modulo.secondNoSet(secondNo);
    }

    /// @dev Test `GetModulo`

    function test_GetModulo() external {
        uint256 result = modulo.GetModulo();
        uint256 expected = 2 % 2;
        assertEq(expected, result);
    }
}
