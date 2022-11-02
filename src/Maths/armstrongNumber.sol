// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title This is a Solidity implementation to Armstrong number.
 * @notice An Armstrong number is a number that is equal to the sum of
 * cubes of its digits.
 * @author [Wenceslas Sanchez](https://github.com/wenceslas-sanchez)
 */
contract ArmstrongNumber {
    /**
     * @notice Return the digit numbers of an integer.
     * @dev From https://ethereum.stackexchange.com/questions/6623/can-i-check-the-number-of-digits-in-solidity
     */
    function numDigits(int256 _n) public pure returns (uint256) {
        uint8 digits = 0;
        while (_n != 0) {
            _n /= 10;
            digits++;
        }

        return digits;
    }

    /**
     * @notice Function to check whether a number is armstrong or not.
     * @return `true` if the number is armstrong
     */
    function isArmstrongNumber(uint256 _n) public pure returns (bool) {
        uint256 sum = 0;
        uint256 saveNum = _n;
        uint256 rightNum;

        uint256 digits = numDigits(int256(_n));

        while (saveNum > 0) {
            rightNum = saveNum % 10;
            sum += rightNum**digits;
            saveNum /= 10;
        }

        return _n == sum;
    }
}
