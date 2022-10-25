// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../stringMatch.sol";

contract StringMatchTest is Test {
    // Target contract
    StringMatch sm;

    /// Test Params
    string firstString = "Sreek";
    string secondString = "Sreek";

    //  =====   Set up  =====
    function setUp() public {
        sm = new StringMatch();
        sm.setFirstString(firstString);
        sm.setSecondString(secondString);
    }

    /// @dev Test `stringMatch`

    function test_stringMatch() public view {
        bool result = sm.stringMatch();
        assert(result);
    }
}
