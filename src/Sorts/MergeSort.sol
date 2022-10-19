// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MergeSort {
  function sort(uint256[] calldata input)
    public
    pure
    returns (uint256[] memory)
  {
    uint256 length = input.length;

    if (length < 2) {
      return input;
    }

    uint256 halfSize = length / 2;
    uint256[] memory arr1 = sort(input[:halfSize]);
    uint256[] memory arr2 = sort(input[halfSize:]);

    return merge(arr1, arr2);
  }

  function merge(uint256[] memory first, uint256[] memory second)
    internal
    pure
    returns (uint256[] memory)
  {
    uint256 firstLength = first.length;
    uint256 secondLength = second.length;
    uint256[] memory result = new uint256[](firstLength + secondLength);

    uint256 index1 = 0;
    uint256 index2 = 0;
    uint256 idx = 0;
    for (; index1 < firstLength && index2 < secondLength; idx++) {
      if (first[index1] < second[index2]) {
        result[idx] = first[index1];
        index1++;
      } else {
        result[idx] = second[index2];
        index2++;
      }
    }

    for (uint256 idx1 = index1; idx1 < firstLength; idx1++) {
      result[idx] = first[idx1];
      idx++;
    }

    for (uint256 idx2 = index2; idx2 < secondLength; idx2++) {
      result[idx] = second[idx2];
      idx++;
    }

    return result;
  }
}
