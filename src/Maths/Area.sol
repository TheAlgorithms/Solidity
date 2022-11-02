// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";

/**
 * @title Calculate the area of various shapes
 * @author [Perelyn](https://github.com/Perelyn-sama)
 */
contract Area is Test {
    /**
     *@notice Calculate the Surface Area of a Cube.
     * @dev https://en.wikipedia.org/wiki/Area#Surface_area
     * @param _side - Integer
     * @return _result - 6 * side ** 2
     */
    function surfaceAreaCube(uint256 _side)
        public
        pure
        returns (uint256 _result)
    {
        _result = 6 * _side**2;
    }

    /**
     *@notice Calculate the Surface Area of a Sphere.
     * @dev https://en.wikipedia.org/wiki/Sphere
     * @param _radius - Integer
     * @return _result - 4 * pi * r^2
     */
    function surfaceAreaSphere(uint256 _radius)
        public
        pure
        returns (uint256 _result)
    {
        uint256 PI_IN_WEI = 3141590000000000000;
        _result = (4 * PI_IN_WEI * _radius**2) / 1e18;
    }

    /**
     *@notice Calculate the area of a rectangle.
     * @dev https://en.wikipedia.org/wiki/Area#Quadrilateral_area
     * @param _length - Integer
     * @param  _width - Integer
     * @return _result - width * length
     */
    function areaRectangle(uint256 _width, uint256 _length)
        public
        pure
        returns (uint256 _result)
    {
        _result = _width * _length;
    }

    /**
     *@notice Calculate the area of a square.
     * @dev https://en.wikipedia.org/wiki/Square
     * @param _side - Integer
     * @return _result - side ** 2.
     */
    function areaSquare(uint256 _side) public pure returns (uint256 _result) {
        _result = _side**2;
    }

    /**
     *@notice Calculate the area of a triangle.
     * @dev https://en.wikipedia.org/wiki/Area#Triangle_area
     * @param _base - Integer
     * @param _height - Integer
     * @return _result - base * height / 2.
     */
    function areaTriangle(uint256 _base, uint256 _height)
        public
        pure
        returns (uint256 _result)
    {
        _result = (_base * _height) / 2.0;
    }

    /**
     *@notice Calculate the area of a parallelogram.
     * @dev https://en.wikipedia.org/wiki/Area#Dissection,_parallelograms,_and_triangles
     * @param _base - Integer
     * @param _height - Integer
     * @return _result - base * height
     */
    function areaParallelogram(uint256 _base, uint256 _height)
        public
        pure
        returns (uint256 _result)
    {
        _result = _base * _height;
    }

    /**
     *@notice Calculate the area of a trapezium.
     * @dev https://en.wikipedia.org/wiki/Trapezoid
     * @param _base1 - Integer
     * @param _base2 - Integer
     * @param _height - Integer
     * @return _result (1 / 2) * (base1 + base2) * height
     */
    function areaTrapezium(
        uint256 _base1,
        uint256 _base2,
        uint256 _height
    ) public pure returns (uint256 _result) {
        uint256 HALF_IN_WEI = 500000000000000000;
        _result = (HALF_IN_WEI * (_base1 + _base2) * _height) / 1e18;
    }

    /**
     *@notice Calculate the area of a circle.
     * @dev https://en.wikipedia.org/wiki/Area_of_a_circle
     * @param _radius - Integer
     * @return _result - Math.PI * radius ** 2
     */
    function areaCircle(uint256 _radius) public pure returns (uint256 _result) {
        uint256 PI_IN_WEI = 3141590000000000000;
        _result = (PI_IN_WEI * _radius**2) / 1e18;
    }

    /**
     *@notice Calculate the area of a rhombus.
     * @dev https://en.wikipedia.org/wiki/
     * @param _diagonal1 - Integer
     * @param _diagonal2 - Integer
     * @return _result - (1 / 2) * diagonal1 * diagonal2
     */
    function areaRhombus(uint256 _diagonal1, uint256 _diagonal2)
        public
        pure
        returns (uint256 _result)
    {
        uint256 HALF_IN_WEI = 500000000000000000;
        _result = (HALF_IN_WEI * _diagonal1 * _diagonal2) / 1e18;
    }
}
