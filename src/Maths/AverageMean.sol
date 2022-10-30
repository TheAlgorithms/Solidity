// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title find the mean value of an array of numbers
 * @author [Perelyn](https://github.com/Perelyn-sama)
 * @dev https://en.wikipedia.org/wiki/Mean
 */
contract AverageMean {
    /// find the mean value of an array of numbers
    function getAverageMean(uint256[] memory _nums)
        public
        pure
        returns (uint256 result)
    {
        uint256 sum;
        for (uint256 i = 0; i < _nums.length; i++) {
            sum += _nums[i];
        }

        result = sum / _nums.length;
    }
}
