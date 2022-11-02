// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title Zeller's Congruence Algorithm finds the day of the week from the Gregorian Date.
 * @author [Perelyn](https://github.com/Perelyn-sama)
 * @dev Wikipedia: https://en.wikipedia.org/wiki/Zeller%27s_congruence
 */
contract ZellersCongruenceAlgorithm {
    string[] internal daysArr = [
        "Saturday",
        "Sunday",
        "Monday",
        "Tuesday",
        "Wednesday",
        "Thursday",
        "Friday"
    ];

    /// Get the median value of an array of numbers
    function getzellersCongruenceAlgorithm(
        uint256 day,
        uint256 month,
        uint256 year
    ) public view returns (string memory result) {
        uint256 q = day;
        uint256 m = month;
        uint256 y = year;
        if (month < 3) {
            m += 12;
            y -= 1;
        }
        day =
            (q +
                ((26 * (m + 1)) / 10) +
                (y % 100) +
                ((y % 100) / 4) +
                ((y / 100) / 4) +
                (5 * (y / 100))) %
            7;

        return daysArr[day];
    }
}
