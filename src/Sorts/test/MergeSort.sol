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
}
