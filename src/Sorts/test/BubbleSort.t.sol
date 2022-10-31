// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../BubbleSort.sol";

contract BubbleSortTest is Test {
    // Target contract
    BubbleSort bubbleSort;

    /// Test Params
    uint256[] public arr = [65, 55, 45, 35, 25, 15, 10];
    uint256[] expected_result = [10, 15, 25, 35, 45, 55, 65];

    //  =====   Set up  =====
    function setUp() public {
        bubbleSort = new BubbleSort();
    }

    /// @dev Test `bubbleSort`

    function test_bubbleSort() public {
        uint256[] memory result = bubbleSort.bubbleSort(arr);
        assertEq(expected_result, result);
    }
}
