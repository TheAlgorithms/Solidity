// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../fibonacci.sol";

contract FibonacciTest is Test {
    // Target contract
    Fibonacci fib;

    //  =====   Set up  =====
    function setUp() public {
        fib = new Fibonacci();
    }

    /// @dev Test `fibRecursiveTerm`

    function testGoodFibRecursiveTerm() public {
        // 35 - 40 is limit with foundry
        assertEq(fib.fibRecursiveTerm(0), 0, "Fibonacci O-th term is 0.");
        assertEq(fib.fibRecursiveTerm(1), 1, "Fibonacci 1-th term is 1.");
        assertEq(fib.fibRecursiveTerm(2), 1, "Fibonacci 2-th term is 1.");
        assertEq(fib.fibRecursiveTerm(3), 2, "Fibonacci 3-th term is 2.");
        assertEq(fib.fibRecursiveTerm(4), 3, "Fibonacci 4-th term is 3.");
        assertEq(fib.fibRecursiveTerm(5), 5, "Fibonacci 5-th term is 5.");
        assertEq(fib.fibRecursiveTerm(6), 8, "Fibonacci 6-th term is 8.");
        assertEq(fib.fibRecursiveTerm(7), 13, "Fibonacci 7-th term is 13.");
        assertEq(fib.fibRecursiveTerm(8), 21, "Fibonacci 8-th term is 21.");
        assertEq(fib.fibRecursiveTerm(9), 34, "Fibonacci 9-th term is 34.");
        assertEq(fib.fibRecursiveTerm(10), 55, "Fibonacci 10-th term is 55.");
        assertEq(
            fib.fibRecursiveTerm(17),
            1597,
            "Fibonacci 17-th term is 1597."
        ); //assertEq(fib.fibRecursiveTerm(99), 218922995834555169026, "Consume too much gas");
    }

    /// @dev Test `fibRecursive`

    function testGoodFibRecursive() public {
        uint256[] memory expected_total = new uint256[](11);
        uint256[] memory result;

        expected_total[0] = 0;
        result = fib.fibRecursive(0);
        assertEq(
            expected_total[0],
            result[0],
            "Fibonacci 0-th suite last value is 0."
        );

        expected_total[1] = 1;
        result = fib.fibRecursive(1);
        assertEq(
            expected_total[1],
            result[1],
            "Fibonacci 1-th suite last value is 1."
        );

        expected_total[2] = 1;
        result = fib.fibRecursive(2);
        assertEq(
            expected_total[2],
            result[2],
            "Fibonacci 2-th suite last value is 1."
        );

        expected_total[3] = 2;
        result = fib.fibRecursive(3);
        assertEq(
            expected_total[3],
            result[3],
            "Fibonacci 3-th suite last value is 2."
        );

        expected_total[4] = 3;
        result = fib.fibRecursive(4);
        assertEq(
            expected_total[4],
            result[4],
            "Fibonacci 4-th suite last value is 3."
        );

        expected_total[5] = 5;
        result = fib.fibRecursive(5);
        assertEq(
            expected_total[5],
            result[5],
            "Fibonacci 5-th suite last value is 5."
        );

        expected_total[6] = 8;
        expected_total[7] = 13;
        expected_total[8] = 21;
        expected_total[9] = 34;
        expected_total[10] = 55;

        result = fib.fibRecursive(10);
        for (uint256 i = 0; i <= 10; i++) {
            assertEq(
                result[i],
                expected_total[i],
                string(
                    abi.encodePacked(
                        "Fibonacci expected value for ",
                        i,
                        "-th is ",
                        expected_total[i]
                    )
                )
            );
        }
    }

    /// @dev Test `fibMemoization`

    function testGoodFibMemoization() public {
        uint256[] memory expected_total = new uint256[](11);
        uint256[] memory result;

        expected_total[0] = 0;
        result = fib.fibMemoization(0);
        assertEq(
            expected_total[0],
            result[0],
            "Fibonacci 0-th suite last value is 0."
        );

        expected_total[1] = 1;
        result = fib.fibMemoization(1);
        assertEq(
            expected_total[1],
            result[1],
            "Fibonacci 1-th suite last value is 1."
        );

        expected_total[2] = 1;
        result = fib.fibMemoization(2);
        assertEq(
            expected_total[2],
            result[2],
            "Fibonacci 2-th suite last value is 1."
        );

        expected_total[3] = 2;
        result = fib.fibMemoization(3);
        assertEq(
            expected_total[3],
            result[3],
            "Fibonacci 3-th suite last value is 2."
        );

        expected_total[4] = 3;
        result = fib.fibMemoization(4);
        assertEq(
            expected_total[4],
            result[4],
            "Fibonacci 4-th suite last value is 3."
        );

        expected_total[5] = 5;
        result = fib.fibMemoization(5);
        assertEq(
            expected_total[5],
            result[5],
            "Fibonacci 5-th suite last value is 5."
        );

        expected_total[6] = 8;
        expected_total[7] = 13;
        expected_total[8] = 21;
        expected_total[9] = 34;
        expected_total[10] = 55;

        result = fib.fibMemoization(10);
        for (uint256 i = 0; i <= 10; i++) {
            assertEq(
                result[i],
                expected_total[i],
                string(
                    abi.encodePacked(
                        "Fibonacci expected value for ",
                        i,
                        "-th is ",
                        expected_total[i]
                    )
                )
            );
        }

        result = fib.fibMemoization(99);
        assertEq(
            result[99],
            218922995834555169026,
            "Fibonacci 99-th suite last value."
        );
    }
}
