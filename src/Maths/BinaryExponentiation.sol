// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
  @title BinaryExponentiation
  @author [Sebastiano Faiella](https://github.com/xeno097)
  @notice A contract that implements the binary exponentiation
    algorithm for unsigned integers.
  @dev This algorithm allows to efficiently calculate base**exp
    using the binary representation of exp.
    Every bit represents the square number of the previous one
    starting from base**1. The result is computed by multiplying
    the elements of the series where the nth bit of exp is 1.

  Example:
    Compute 5**17
    17 in binary is 10001
    1st bit -> 5**1 = 5
    2nd bit -> 5**2 = 25
    3rd bit -> 5**4 = 625
    4th bit -> 5**8 = 390625
    5th bit -> 5**16 = 152587890625
    Only the first and fifth bits are ones, so:
    5**17 = 152587890625 * 5 = 762939453125
 */
contract BinaryExponentiation {
    /**
    @notice Takes two unsigned integers and calculates the base to the power of exp.
    @param base the number which power must be calculated.
    @param exp the exponent used to calculate the base power.
    @return power the result of computing base to the power of exp.
   */
    function pow(uint256 base, uint256 exp) public pure returns (uint256) {
        // Base case x**0 = 1
        uint256 result = 1;

        // Perform the left shift operation until exp is greater than 0.
        for (; exp > 0; ) {
            /**
             * Take the current least significant bit and verify that it
             * is equal to 1, if it is multiply the current power of the
             * base to the current result.
             */
            if (exp & 1 == 1) {
                result *= base;
            }
            // Compute the next element of the series and left shift exp by 1.
            base *= base;
            exp >>= 1;
        }

        return result;
    }
}
