// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../LeftRotateArray.sol";

contract LeftRotateArrayTest is Test {
    // Target contract
    LeftRotateArray lra;

    /// Test Params
    uint256[] private testArray = [202,27,123,1,66,76,2,55,111,455];
    uint256[] private expectedreversedArray = [123,1,66,76,2,55,111,455,202,27];
    uint private leftrotateCount = 2;
    function setUp() public {
        lra = new LeftRotateArray();
    }

    /// @dev Test `LeftRotateArray`

    function test_LeftRotateArray() public {

        uint[] memory leftRotatedArray = lra.leftRotate(testArray,leftrotateCount);
        assertEq(leftRotatedArray,expectedreversedArray);
    }
}
