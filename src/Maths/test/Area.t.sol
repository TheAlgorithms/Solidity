// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../Area.sol";

contract AreaTest is Test {
    // Target contract
    Area area;

    // Test Params
    uint256 PI_IN_WEI = 3141590000000000000;
    uint256 HALF_IN_WEI = 500000000000000000;

    //  =====   Set up  =====
    function setUp() public {
        area = new Area();
    }

    /// @dev Test `surfaceAreaCube`

    function test_surfaceAreaCube() public {
        uint256 expected_result = 6 * 1**2;

        uint256 result = area.surfaceAreaCube(1);

        assertEq(result, expected_result);
    }

    /// @dev Test `surfaceAreaSphere`

    function test_surfaceAreaSphere() public {
        uint256 expected_result = (4 * PI_IN_WEI * 5**2) / 1e18;

        uint256 result = area.surfaceAreaSphere(5);

        assertEq(result, expected_result);
    }

    /// @dev Test `areaRectangle`

    function test_areaRectangle() public {
        uint256 expected_result = 4 * 4;

        uint256 result = area.areaRectangle(4, 4);

        assertEq(result, expected_result);
    }

    /// @dev Test `areaSquare`

    function test_areaSquare() public {
        uint256 expected_result = 4**2;

        uint256 result = area.areaSquare(4);

        assertEq(result, expected_result);
    }

    /// @dev Test `areaTriangle`

    function test_areaTriangle() public {
        uint256 expected_result = (1 * 4) / 2;

        uint256 result = area.areaTriangle(1, 4);

        assertEq(result, expected_result);
    }

    /// @dev Test `areaParallelogram`

    function test_areaParallelogram() public {
        uint256 expected_result = 5 * 6;

        uint256 result = area.areaParallelogram(5, 6);

        assertEq(result, expected_result);
    }

    /// @dev Test `areaTrapezium`

    function test_areaTrapezium() public {
        uint256 expected_result = (HALF_IN_WEI * (5 + 12) * 10) / 1e18;

        uint256 result = area.areaTrapezium(5, 12, 10);

        assertEq(result, expected_result);
    }

    /// @dev Test `areaCircle`

    function test_areaCircle() public {
        uint256 expected_result = (PI_IN_WEI * 7**2) / 1e18;

        uint256 result = area.areaCircle(7);

        assertEq(result, expected_result);
    }

    /// @dev Test `areaRhombus`

    function test_areaRhombus() public {
        uint256 expected_result = (HALF_IN_WEI * 12 * 10) / 1e18;

        uint256 result = area.areaRhombus(12, 10);

        assertEq(result, expected_result);
    }
}
