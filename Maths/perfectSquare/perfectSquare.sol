pragma solidity ^0.8.0

contract PerfectSquare {
    function sqrt(uint x) private pure returns (uint y) {
        uint z = (x + 1) / 2;
        y = x;
        while (z < y) {
            y = z;
            z = (x / z + z) / 2;
        }
    }

    function perfectSquare(uint _n) public pure returns (bool) {
        return (sqrt(_n) * sqrt(_n)) == _n;
    }
}
