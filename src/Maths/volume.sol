// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title Calculate the volume of the shapes
 * @author [Perelyn](https://github.com/Perelyn-sama)
 * @dev Volumes that are supposed in decimals are slightly inaccurate
 */
contract Volume {
    /// Calculate the volume for a Cuboid
    function volCuboid(
        uint256 width,
        uint256 length,
        uint256 height
    ) public pure returns (uint256) {
        return (width * length * height);
    }

    /// Calculate the volume for a Cuboid
    function volCube(uint256 length) public pure returns (uint256) {
        return (length**3);
    }

    /// Calculate the volume for a Cone
    function volCone(uint256 radius, uint256 height)
        public
        pure
        returns (uint256)
    {
        uint256 PI_IN_WEI = 3141590000000000000;
        return ((PI_IN_WEI * radius**2 * height) / 3) / 1e18;
    }

    /// Calculate the volume for a Pyramid
    function volPyramid(
        uint256 baseLength,
        uint256 baseWidth,
        uint256 height
    ) public pure returns (uint256) {
        return (baseLength * baseWidth * height) / 3;
    }

    /// Calculate the volume for a Cylinder
    function volCylinder(uint256 radius, uint256 height)
        public
        pure
        returns (uint256)
    {
        uint256 PI_IN_WEI = 3141590000000000000;
        return (PI_IN_WEI * radius**2 * height) / 1e18;
    }

    ///   Calculate the volume for a Triangular Prism
    function volTriangularPrism(
        uint256 baseLengthTriangle,
        uint256 heightTriangle,
        uint256 height
    ) public pure returns (uint256) {
        uint256 HALF_IN_WEI = 500000000000000000;
        return
            (HALF_IN_WEI * baseLengthTriangle * heightTriangle * height) / 1e18;
    }

    ///  Calculate the volume for a Pentagonal Prism
    function volPentagonalPrism(
        uint256 pentagonalLength,
        uint256 pentagonalBaseLength,
        uint256 height
    ) public pure returns (uint256) {
        uint256 FIVE_DIVIDEDBY_TWO_IN_WEI = 2500000000000000000;
        return
            (FIVE_DIVIDEDBY_TWO_IN_WEI *
                pentagonalLength *
                pentagonalBaseLength *
                height) / 1e18;
    }

    ///   Calculate the volume for a Sphere
    function volSphere(uint256 radius) public pure returns (uint256) {
        uint256 FOUR_DIVIDEBY_THREE_IN_WEI = 1333333333300000000;
        uint256 PI_IN_WEI = 3141590000000000000;
        return (FOUR_DIVIDEBY_THREE_IN_WEI * PI_IN_WEI * radius**3) / 1e18**2;
    }

    ///  Calculate the volume for a Hemisphere
    function volHemisphere(uint256 radius) public pure returns (uint256) {
        uint256 PI_IN_WEI = 3141590000000000000;
        return ((2 * PI_IN_WEI * radius**3) / 3) / 1e18;
    }
}
