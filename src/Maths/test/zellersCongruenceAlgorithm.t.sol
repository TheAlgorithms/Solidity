// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../zellersCongruenceAlgorithm.sol";

contract ZellersCongruenceAlgorithmTest is Test {
    // Target contract
    ZellersCongruenceAlgorithm zellersCongruenceAlgorithm;

    //  =====   Set up  =====
    function setUp() public {
        zellersCongruenceAlgorithm = new ZellersCongruenceAlgorithm();
    }

    /// @dev Test `getzellersCongruenceAlgorithm`

    function testSqrt() public {
        string memory test1 = zellersCongruenceAlgorithm
            .getzellersCongruenceAlgorithm(25, 1, 2013);
        assertEq(test1, "Friday");
        string memory test2 = zellersCongruenceAlgorithm
            .getzellersCongruenceAlgorithm(26, 1, 2013);
        assertEq(test2, "Saturday");
        string memory test3 = zellersCongruenceAlgorithm
            .getzellersCongruenceAlgorithm(16, 4, 2022);
        assertEq(test3, "Saturday");
        string memory test4 = zellersCongruenceAlgorithm
            .getzellersCongruenceAlgorithm(25, 4, 2022);
        assertEq(test4, "Monday");
    }
}
