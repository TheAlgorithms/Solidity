// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/** @title Get the absoule value of an integer.
 * @author Perelyn https://github.com/Perelyn-sama
 * @dev https://www.khanacademy.org/math/cc-sixth-grade-math/cc-6th-negative-number-topic/cc-6th-absolute-value/v/absolute-value-of-integers
 */
contract Area {
    /** @notice Computes the n-th (0-indexed) Lucas number using recursion.
     * @dev This method use a lot of gas to run. Recursive methods are not good ideas.
     * @param _side integer tha
     */
    function surfaceAreaCube(uint256 _side)
        public
        pure
        returns (uint256 result)
    {
        result = 6 * _side**2;
    }

    /** @notice Computes the n-th (0-indexed) Lucas number using recursion.
     * @dev This method use a lot of gas to run. Recursive methods are not good ideas.
     * @param _radius integer tha
     */
    function surfaceAreaSphere(uint256 _radius)
        public
        pure
        returns (uint256 result)
    {
        result = 6 * _radius**2;
    }
}
