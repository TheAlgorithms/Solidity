pragma solidity ^0.8.0;

/** @title This is a Solidity implementation to Armstrong number.
  * @notice An Armstrong number is number that is equal to the sum of
  * cubes of its digits.
  * @author Wenceslas Sanchez (wenceslas-sanchez)
  */
contract ArmstrongNumber {
    /** @notice Return the digit numbers of an integer.
      * @dev From https://ethereum.stackexchange.com/questions/6623/can-i-check-the-number-of-digits-in-solidity
      */
    function numDigits(int _n) public pure returns (uint) {
        uint8 digits = 0;
        while (_n != 0) {
            _n /= 10;
            digits++;
        }

        return digits;
    }

    /** @notice Function to check whether a number is armstrong or not.
      * @return `true` if the number is armstrong
      */
    function isArmstrongNumber(uint _n) public pure returns (bool) {
        uint sum= 0;
        uint saveNum= _n;
        uint rightNum;

        uint digits= numDigits(int(_n));

        while (saveNum > 0) {
            rightNum = saveNum % 10;
            sum += rightNum ** digits;
            saveNum /= 10;
        }

        return _n == sum;
    }
}
