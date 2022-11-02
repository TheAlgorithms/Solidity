// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../MergeSort.sol";

contract MergeSortTest is Test {
    MergeSort mergeSort;

    //  =====   Set up  =====
    function setUp() public {
        mergeSort = new MergeSort();
    }

    function testSortsAnEmptyArray() public {
        // Arrange
        uint256[] memory input = new uint256[](0);
        uint256[] memory expectedResult = new uint256[](0);

        // Act
        uint256[] memory result = mergeSort.sort(input);

        // Assert
        assertEq(result, expectedResult);
    }

    function testSortsAnArrayWithLength1() public {
        // Arrange
        uint256[] memory input = new uint256[](1);
        uint256[] memory expectedResult = new uint256[](1);
        input[0] = 10;
        expectedResult[0] = 10;

        // Act
        uint256[] memory result = mergeSort.sort(input);

        // Assert
        assertEq(result, expectedResult);
    }

    function testSortsAnArrayWithLength2() public {
        // Arrange
        uint256[] memory input = new uint256[](2);
        uint256[] memory expectedResult = new uint256[](2);
        input[0] = 10;
        input[1] = 3;
        expectedResult[0] = 3;
        expectedResult[1] = 10;

        // Act
        uint256[] memory result = mergeSort.sort(input);

        // Assert
        assertEq(result, expectedResult);
    }

    function testSortsAnArrayWithOddLength() public {
        // Arrange
        // [33,69,27,5,14,7,47]
        uint256[] memory input = new uint256[](7);
        input[0] = 33;
        input[1] = 69;
        input[2] = 27;
        input[3] = 5;
        input[4] = 14;
        input[5] = 7;
        input[6] = 47;

        // [5,7,14,27,33,47,69]
        uint256[] memory expectedResult = new uint256[](7);
        expectedResult[0] = 5;
        expectedResult[1] = 7;
        expectedResult[2] = 14;
        expectedResult[3] = 27;
        expectedResult[4] = 33;
        expectedResult[5] = 47;
        expectedResult[6] = 69;

        // Act
        uint256[] memory result = mergeSort.sort(input);

        // Assert
        assertEq(result, expectedResult);
    }

    function testSortsAnArrayWithEvenLength() public {
        // Arrange
        // [2,37,111,7,14,23,55,87]
        uint256[] memory input = new uint256[](8);
        input[0] = 2;
        input[1] = 37;
        input[2] = 111;
        input[3] = 7;
        input[4] = 14;
        input[5] = 23;
        input[6] = 55;
        input[7] = 87;

        // [2,7,14,23,37,55,87,111]
        uint256[] memory expectedResult = new uint256[](8);
        expectedResult[0] = 2;
        expectedResult[1] = 7;
        expectedResult[2] = 14;
        expectedResult[3] = 23;
        expectedResult[4] = 37;
        expectedResult[5] = 55;
        expectedResult[6] = 87;
        expectedResult[7] = 111;

        // Act
        uint256[] memory result = mergeSort.sort(input);

        // Assert
        assertEq(result, expectedResult);
    }
}
