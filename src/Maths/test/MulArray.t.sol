// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../MulArray.sol";

contract MulArrayTest is Test {
    // Target contract
    MulArray mulArray;

    /// Test Params
    uint256[] public arr = [2, 8, 4, 5];

    //  =====   Set up  =====
    function setUp() public {
        mulArray = new MulArray();
    }

    /// @dev Test `mulArr`

    function test_addArr() public {
        uint256 expected_result = 2 * 8 * 4 * 5;

        uint256 result = mulArray.mulArr(arr);

        assertEq(result, expected_result);
    }
}
