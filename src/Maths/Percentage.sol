// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title Percentage Calculator Contract.
 * @author [Anthony (fps)](https://github.com/fps8k)
 * @dev  On big projects like Decentralized Finances, it is required
 *       that in some cases, percentages be applied.
 *       In Solidity, this is tricky, because, percentages are in
 *       most cases, linked with decimals, and Solidity doesn't really
 *       go well with decimal numbers.
 *       So the concept of decimal places will apply here.
 *       Decimal places (dp), allow the compiler to multiply the
 *       resulting decimal by the value of the decimal place and thus,
 *       return a whole number that Solidity can work with.
 *
 *       Currently, this contract works only for uints that seek for
 *       whole number percentages of another number, i.e. x% of y,
 *       where x and y are whole numbers greater than 0.
 *
 *       Future PRs might include percentages for ints and `masked
 *       decimals` (decimals multiplied by a certain dp), e.g.
 *       [representing 1.5% as 15% then diving the result by 10]
 *
 *       Modifications are welcomed.
 *
 * @notice Higher dp results to higher accuracy.
 */

contract PercentageCalculator {
    /**
     * @dev  Calculates the `a`% of `b` i.e (a*b / 100) and returns
     *       the value to `dp` decimal places.
     *       The function evaluates that the product of the numerators
     *       is not greater than the denominator [which will lead to
     *       decimal error in Solidity, Ref line 10].
     *
     *
     * @param a  First number, percentage to find, greater than 0.
     * @param b  Second number, number to find the percentage from,
     *           greater than 0.
     * @param dp Third number, decimal places desired, greater than 0.
     *
     * @return percentage    Percentage calculated, this returned value
     *                       will be divided by 10 ** dp in the front-end
     *                       [Python or JS] to get the accurate decimal
     *                       value.
     */
    function uint256Percentage(
        uint256 a,
        uint256 b,
        uint8 dp
    ) public pure returns (uint256 percentage) {
        /// @dev Makes sure the values of a, b and dp are not 0.
        if (a == 0 || b == 0 || dp == 0) {
            /// @dev Revert the transaction if any is zero.
            revert("Error: 0%, or x% of 0, or Percentage to 0 dp.");
        }

        /// @dev Get the product of the numerators.
        uint256 numeratorProduct = a * b * (10**dp);
        /// @dev Ensure the numeratorProduct is > the denominator [100].
        require(numeratorProduct >= 100, "Small decimal place value.");
        /// @dev Get and return the percentage to `dp` decimal places.
        percentage = (a * b * (10**dp)) / 100;
    }

    /**
     * @dev  Same functionality as the function above.
     *       This function takes into consideration, positive and
     *       negative numbers.
     *
     *
     * @param a  First number, percentage to find, greater than 0.
     * @param b  Second number, number to find the percentage from,
     *           not equal to 0.
     * @param dp Third number, decimal places desired, greater than 0.
     *
     * @return percentage    Percentage, same as above.
     */
    function int256Percentage(
        uint256 a,
        int256 b,
        uint8 dp
    ) public pure returns (int256 percentage) {
        /**
         * @dev  This boolean evaluates the second parameter to know if or
         *       if not it is below 0, as zero is not valid [Ref line 76].
         *       If it is below 0, it is set to true.
         */
        bool isBelowZero;
        /// @dev    Variable to store the absolute or passed value of the second
        ///         parameter, dependent on if the second parameter is above or
        ///         below 0. This will be used for the percentage finding.
        uint256 _b;

        /// @dev    If the second parameter is below 0, take the absolute value of
        ///         the value and cast it to uint256. Then store it in the _b
        ///         variable.
        if (b < 0) {
            /// @dev Set the boolean isBelowZero to true.
            isBelowZero = true;
            /// @dev    Take the absolute value of the value and cast it to uint256
            ///         and store in the _b variable.
            _b = uint256(-1 * b);
        } else {
            /// @dev    If the value of the second parameter is above 0, then, set
            ///         the _b variable to the value passed. No changes are made.
            _b = uint256(b);
        }

        /// @dev    Using the new uint256 variable _b, get the percentage as we
        ///         would on a normal uint256, using the uint256Percentage function.
        uint256 _percentage = uint256Percentage(a, _b, dp);

        /// @dev    Re-evaluate the isBelowZero boolean, if it is true
        //          i.e. second parameter was below 0,
        ///         then multiply the gotten result by -1 to maintain negativity.
        if (isBelowZero) {
            /// @dev    Multiply by -1 if the second parameter was below 0.
            percentage = -1 * int256(_percentage);
        } else {
            /// @dev    If it was above 0, simply cast back to int256.
            ///         [The casting is to maintain int256 returns].
            percentage = int256(_percentage);
        }
    }
}
