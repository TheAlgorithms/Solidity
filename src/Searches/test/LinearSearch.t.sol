// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../LinearSearch.sol";

contract LinearSearchTest is Test {
    // Target contract
    LinearSearch ls;

    /// Test Params
    uint256[] public arr = [12, 14, 11, 3, 15, 5, 4, 13, 7, 20];
    uint private key = 4;

    //  =====   Set up  =====
    function setUp() public {
        ls = new LinearSearch();
    }

    /// @dev Test `LinearSearch`

    function test_LinearSearch() public {
        int searchedIndex = ls.search(arr,key);
        int expectedIndex = 6;
        assertEq(expectedIndex, searchedIndex);
    }
}
