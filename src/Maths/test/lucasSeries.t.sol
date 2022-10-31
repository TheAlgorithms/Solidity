// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../lucasSeries.sol";

/**
 * @dev String operations.
 */
library Strings {
    bytes16 private constant _HEX_SYMBOLS = "0123456789abcdef";

    /**
     * @dev Converts a `uint256` to its ASCII `string` decimal representation.
     */
    function toString(uint256 value) internal pure returns (string memory) {
        // Inspired by OraclizeAPI's implementation - MIT licence
        // https://github.com/oraclize/ethereum-api/blob/b42146b063c7d6ee1358846c198246239e9360e8/oraclizeAPI_0.4.25.sol

        if (value == 0) {
            return "0";
        }
        uint256 temp = value;
        uint256 digits;
        while (temp != 0) {
            digits++;
            temp /= 10;
        }
        bytes memory buffer = new bytes(digits);
        while (value != 0) {
            digits -= 1;
            buffer[digits] = bytes1(uint8(48 + uint256(value % 10)));
            value /= 10;
        }
        return string(buffer);
    }

    /**
     * @dev Converts a `uint256` to its ASCII `string` hexadecimal representation.
     */
    function toHexString(uint256 value) internal pure returns (string memory) {
        if (value == 0) {
            return "0x00";
        }
        uint256 temp = value;
        uint256 length = 0;
        while (temp != 0) {
            length++;
            temp >>= 8;
        }
        return toHexString(value, length);
    }

    /**
     * @dev Converts a `uint256` to its ASCII `string` hexadecimal representation with fixed length.
     */
    function toHexString(uint256 value, uint256 length)
        internal
        pure
        returns (string memory)
    {
        bytes memory buffer = new bytes(2 * length + 2);
        buffer[0] = "0";
        buffer[1] = "x";
        for (uint256 i = 2 * length + 1; i > 1; --i) {
            buffer[i] = _HEX_SYMBOLS[value & 0xf];
            value >>= 4;
        }
        require(value == 0, "Strings: hex length insufficient");
        return string(buffer);
    }
}

contract LucasSeriesTest is Test {
    // Target contract
    LucasSeries lucasSeries;

    // Test params
    uint256[] expected_total = [2, 1, 3, 4, 7, 11, 18, 29, 47, 76, 123];

    //  =====   Set up  =====
    function setUp() public {
        lucasSeries = new LucasSeries();
    }

    /// @dev Test `lucasRecursiveTerm`

    function testLucasRecursiveTerm() public {
        for (uint256 i = 0; i < expected_total.length; i++) {
            emit log_string(
                string(
                    abi.encodePacked(
                        "Lucas ",
                        Strings.toString(i),
                        "-th suite last value is ",
                        Strings.toString(expected_total[i])
                    )
                )
            );
            assertEq(
                lucasSeries.lucasRecursiveTerm(i),
                expected_total[i],
                string(
                    abi.encodePacked(
                        "Lucas ",
                        Strings.toString(i),
                        "-th suite last value is ",
                        Strings.toString(expected_total[i])
                    )
                )
            );
        }
    }

    // /// @dev Test `lucasRecursive`

    function testLucasRecursive() public {
        uint256[] memory result = lucasSeries.lucasRecursive(10);
        assertEq(expected_total, result);
    }

    // /// @dev Test `lucasDynamicTerm`

    function testLucasDynamicTerm() public {
        for (uint256 i = 0; i < expected_total.length; i++) {
            emit log_string(
                string(
                    abi.encodePacked(
                        "Lucas ",
                        Strings.toString(i),
                        "-th suite last value is ",
                        Strings.toString(expected_total[i])
                    )
                )
            );
            assertEq(
                lucasSeries.lucasDynamicTerm(i),
                expected_total[i],
                string(
                    abi.encodePacked(
                        "Lucas ",
                        Strings.toString(i),
                        "-th suite last value is ",
                        Strings.toString(expected_total[i])
                    )
                )
            );
        }
    }

    /// @dev Test `lucasDynamic`

    function testLucasDynamic() public {
        uint256[] memory result = lucasSeries.lucasDynamic(10);
        assertEq(expected_total, result);
    }
}
