// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../volume.sol";

contract VolumeTest is Test {
    // Target contract
    Volume volume;

    //  =====   Set up  =====
    function setUp() public {
        volume = new Volume();
    }

    /// @dev Test `volCuboid`

    function testvolCuboid() public {
        uint256 expected_result = 30;
        uint256 result = volume.volCuboid(2, 5, 3);
        assertEq(result, expected_result);
    }

    /// @dev Test `testvolCube`

    function testvolCube() public {
        uint256 expected_result = 8;
        uint256 result = volume.volCube(2);
        assertEq(result, expected_result);
    }

    /// @dev Test `volCone`

    function testvolCone() public {
        uint256 expected_result = 75;
        uint256 result = volume.volCone(3, 8);
        assertEq(result, expected_result);
    }

    /// @dev Test `volPyramid`

    function testvolPyramid() public {
        uint256 expected_result = 16;
        uint256 result = volume.volPyramid(2, 3, 8);
        assertEq(result, expected_result);
    }

    /// @dev Test `volCylinder`

    function testvolCylinder() public {
        uint256 expected_result = 226;
        uint256 result = volume.volCylinder(3, 8);
        assertEq(result, expected_result);
    }

    /// @dev Test `volTriangularPrism`

    function testvolTriangularPrism() public {
        uint256 expected_result = 72;
        uint256 result = volume.volTriangularPrism(3, 6, 8);
        assertEq(result, expected_result);
    }

    /// @dev Test `volPentagonalPrism`

    function testvolPentagonalPrism() public {
        uint256 expected_result = 80;
        uint256 result = volume.volPentagonalPrism(1, 4, 8);
        assertEq(result, expected_result);
    }

    /// @dev Test `volSphere`

    function testvolSphere() public {
        uint256 expected_result = 268;
        uint256 result = volume.volSphere(4);
        assertEq(result, expected_result);
    }

    /// @dev Test `volHemisphere`

    function testvolHemisphere() public {
        uint256 expected_result = 134;
        uint256 result = volume.volHemisphere(4);
        assertEq(result, expected_result);
    }
}
