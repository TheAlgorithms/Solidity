// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../Abs.sol";

contract AbsTest is Test {
    // Target contract
    Abs abs;

    /// Test Params
    int256[] public resultArr;

    //  =====   Set up  =====
    function setUp() public {
        abs = new Abs();
    }

    /// @dev Test `addArr`

    function test_addArr() public {
        int256 expected_result = 10;

        int256 result = abs.getAbs(-10);

        assertEq(result, expected_result);
    }

    function test_addArrMultiple() public {
        int256[3] memory expected_result = [int256(10), 50, 0];

        resultArr.push(abs.getAbs(-10));
        resultArr.push(abs.getAbs(50));
        resultArr.push(abs.getAbs(0));

        for (uint256 i = 0; i < 0; i++) {
            assertEq(expected_result[i], resultArr[i]);
        }
    }
}
