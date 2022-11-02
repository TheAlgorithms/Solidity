// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../AliquotSum.sol";

contract AliquotSumTest is Test {
    // Target contract
    AliquotSum aliquotSum;

    //  =====   Set up  =====
    function setUp() public {
        aliquotSum = new AliquotSum();
    }

    /// @dev Test `getAliquotSum`

    function test_getAliquotSum() public {
        uint256 expected_result = 1 + 2 + 3;

        uint256 result = aliquotSum.getAliquotSum(6);

        assertEq(result, expected_result);
    }
}
