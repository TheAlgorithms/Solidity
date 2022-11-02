// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../factorial.sol";

contract FactorialTest is Test {
    // Target contract
    Factorial factorial;

    //  =====   Set up  =====
    function setUp() public {
        factorial = new Factorial();
    }

    /// @dev Test `factoIterative`

    function test_factoIterative() public {
        uint256 expectedResult = 1 * 2 * 3;

        uint256 result = factorial.factoIterative(3);

        assertEq(expectedResult, result);
    }

    function test_factoIterative_withZero() public {
        uint256 expectedResult = 1;

        uint256 result = factorial.factoIterative(0);

        assertEq(expectedResult, result);
    }

    /// @dev Test `factoRecursive`

    function test_factoRecursive() public {
        uint256 expectedResult = 1 * 2 * 3;

        uint256 result = factorial.factoRecursive(3);

        assertEq(expectedResult, result);
    }

    function test_test_factoRecursive_withZero() public {
        uint256 expectedResult = 1;

        uint256 result = factorial.factoRecursive(0);

        assertEq(expectedResult, result);
    }
}
