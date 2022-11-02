// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../ReverseArray.sol";

contract ReverseArrayTest is Test {
    // Target contract
    ReverseArray reverseArray;

    /// Test Params
    uint256[] private testArray = [202, 27, 123, 1, 66, 76, 2, 55, 111, 455];
    uint256[] private expectedreversedArray = [
        455,
        111,
        55,
        2,
        76,
        66,
        1,
        123,
        27,
        202
    ];

    function setUp() public {
        reverseArray = new ReverseArray();
    }

    /// @dev Test `reverseArray`

    function test_reverseArray() public {
        uint256[] memory reversedArray = reverseArray.reverse(testArray);
        assertEq(reversedArray, expectedreversedArray);
    }
}
