// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../SelectionSort.sol";

contract SelectionSortTest is Test {
    // Target contract
    SelectionSort selectionSort;

    /// Test Params
    uint256[] public arr = [12, 14, 11, 3, 15, 5, 4, 13, 7, 20];
    uint256[] expected_result = [3, 4, 5, 7, 11, 12, 13, 14, 15, 20];

    //  =====   Set up  =====
    function setUp() public {
        selectionSort = new SelectionSort();
    }

    /// @dev Test `selectionSort`

    function test_SelectionSort() public {
        uint256[] memory result = selectionSort.selectionSort(arr);
        assertEq(expected_result, result);
    }
}
