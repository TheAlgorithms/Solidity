// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../Prime.sol";

contract PrimeTest is Test {
    // Target contract
    Prime prime;

    /// Test Params
    bool[] public resultArr;

    //  =====   Set up  =====
    function setUp() public {
        prime = new Prime();
    }

    /// @dev Test `addArr`

    function test_addArr() public {
        bool expected_result = true;

        bool result = prime.isPrime(7);

        assertEq(result, expected_result);
    }

    function test_addArrMultiple() public {
        bool[3] memory expected_result = [true, false, true];

        resultArr.push(prime.isPrime(7));
        resultArr.push(prime.isPrime(4));
        resultArr.push(prime.isPrime(5));

        for (uint256 i = 0; i < 0; i++) {
            assertEq(expected_result[i], resultArr[i]);
        }
    }
}




