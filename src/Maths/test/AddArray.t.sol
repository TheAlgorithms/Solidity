// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../AddArray.sol";

contract AddArrayTest is Test {
    // Target contract
    AddArray addArray;

    /// Test Params
    uint256[] public arr = [2, 8, 4, 5];

    //  =====   Set up  =====
    function setUp() public {
        addArray = new AddArray();
    }

    /// @dev Test `addArr`

    function test_addArr() public {
        uint256 expected_result = 2 + 8 + 4 + 5;

        uint256 result = addArray.addArr(arr);

        assertEq(result, expected_result);
    }
}
