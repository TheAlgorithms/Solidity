// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../AverageMean.sol";

contract AverageMeanTest is Test {
    // Target contract
    AverageMean averageMean;

    // Test Params
    uint256[] public arr1 = [1, 2, 4, 5];
    uint256[] public arr2 = [10, 40, 100, 20];
    uint256 public expected_result1 = 3;
    uint256 public expected_result2 = 42;

    //  =====   Set up  =====
    function setUp() public {
        averageMean = new AverageMean();
    }

    /// @dev Test `getAverageMean`
    function test_getAverageMan() public {
        uint256 result1 = averageMean.getAverageMean(arr1);
        assertEq(expected_result1, result1);

        uint256 result2 = averageMean.getAverageMean(arr2);
        assertEq(expected_result2, result2);
    }
}
