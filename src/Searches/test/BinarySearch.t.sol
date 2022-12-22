// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../BinarySearch.sol";

contract BinarySearchTest is Test {
    // Target contract
    BinarySearch bs;

    /// Test Params
    uint256[] private arr = [3, 4, 5, 7, 11, 12, 13, 14, 15, 20];
    uint private key = 20;

    //  =====   Set up  =====
    function setUp() public {
        bs = new BinarySearch();
        bs.setValue(key);
        bs.setArray(arr);
    }
    
    /// @dev Test `BinarySearch`

    function test_BinarySearch() external {
        uint searchedIndex = bs.printResult();
        uint expectedIndex = 9;
        assertEq(expectedIndex, searchedIndex);
    }
}
