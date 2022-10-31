// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../perfectSquare.sol";

contract PerfectSquareTest is Test {
    // Target contract
    PerfectSquare perfectSquare;

    //  =====   Set up  =====
    function setUp() public {
        perfectSquare = new PerfectSquare();
    }

    /// @dev Test `perfectSquare`

    function testSqrt() public {
        uint256 num = 16;
        bool isPerfectSquare = perfectSquare.perfectSquare(num);
        assertEq(isPerfectSquare, true);
    }
}
