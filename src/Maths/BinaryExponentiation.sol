// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title BinaryExponentiation
/// @author https://github.com/xeno097
/// @notice A contract that implements the binary exponentiation algorithm for signed and unsigned integers
/// @dev TODO: Explain how the algorith works
contract BinaryExponentiation {
  /// @notice Takes two unsigned integers and calculates the base to the power of exp.
  /// @param base the number which power must be calculated.
  /// @param exp the exponent used to calculate the base power.
  /// @return power the result of computing base to the power of exp.
  function pow(uint256 base, uint256 exp) public pure returns (uint256) {
    // Base case x**0 = 1
    uint256 res = 1;

    // Perform the left shift operation until exp is greater
    // than 0.
    for (; exp > 0; ) {
      // Take the current least significant bit and verify that
      // it is equal to 1, if it is multiply the current power
      // of the base to the current result.
      if (exp & 1 == 1) {
        res *= base;
      }
      base *= base;
      exp >>= 1;
    }

    return res;
  }
}
