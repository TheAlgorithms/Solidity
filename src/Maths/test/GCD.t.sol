// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../GCD.sol";

contract GCDTest is Test {
    
    // Target contract
    GCD gcd;

    /// Test Params
    uint256[] public resultArr;

    //  =====   Set up  =====
    function setUp() public {
        gcd = new GCD();
    }

    /// @dev Test `addArr`

    function test_addArrR() public {
        uint256 expected_result = 1;

        uint256 result = gcd.gcdR(7, 5);

        assertEq(result, expected_result);
    }

    function test_addArrI() public {
        uint256 expected_result = 1;

        uint256 result = gcd.gcdI(8, 5);

        assertEq(result, expected_result);
    }

    function test_addArrMultiple() public {
        uint256[3] memory expected_result = [uint256(1), uint256(1), uint256(6)];

        resultArr.push(gcd.gcdR(7, 5));
        resultArr.push(gcd.gcdI(7, 5));
        resultArr.push(gcd.gcdR(12, 18));

        for (uint256 i = 0; i < 3; i++) {
            assertEq(expected_result[i], resultArr[i]);
        }
    }

}
