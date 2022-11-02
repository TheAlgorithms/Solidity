// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract PerfectSquare {
    function sqrt(uint256 x) private pure returns (uint256 y) {
        uint256 z = (x + 1) / 2;
        y = x;
        while (z < y) {
            y = z;
            z = (x / z + z) / 2;
        }
    }

    function perfectSquare(uint256 _n) public pure returns (bool) {
        return (sqrt(_n) * sqrt(_n)) == _n;
    }
}
