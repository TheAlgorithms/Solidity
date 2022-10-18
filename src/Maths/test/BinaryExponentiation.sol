// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../BinaryExponentiation.sol";

contract BinaryExponentiationTest is Test {
    BinaryExponentiation binaryExponentiation;

    function setUp() public {
        binaryExponentiation = new BinaryExponentiation();
    }
}
