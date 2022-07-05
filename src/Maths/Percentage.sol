// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

/**
* @title Percentage Calculator Contract.
* @author Anthony (fps) https://github.com/fps8k.
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
    function perc(
        uint256 a, 
        uint256 b, 
        uint8 dp
    ) public pure returns(uint256 percentage)
    {
        /// @dev Makes sure the values of a, b and dp are not 0.
        if (a == 0 || b == 0 || dp == 0) {
            /// @dev Revert the transaction if any is zero.
            revert ("Zero error.");
        }

        /// @dev Get the product of the numerators.
        uint256 numeratorProduct = a * b * (10 ** dp);
        /// @dev Ensure the numeratorProduct is > the denominator [100].
        require(numeratorProduct > 100, "Small decimal place value.");
        /// @dev Get and return the percentage to `dp` decimal places.
        percentage = (a * b * (10 ** dp)) / 100;
    }
}

