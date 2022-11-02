// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title This is a Solidity implementation to Lucas sequence problem.
 * @author [Wenceslas Sanchez](https://github.com/wenceslas-sanchez)
 * @dev Related to Fibonacci sequence number.
 */
contract LucasSeries {
    /**
     * @notice Computes the n-th (0-indexed) Lucas number using recursion.
     * @dev This method use a lot of gas to run. Recursive methods are not good ideas.
     * For instance with RemixIDE, its hard to go further 10th term.
     */
    function lucasRecursiveTerm(uint256 _n)
        public
        pure
        returns (uint256 result)
    {
        if (_n == 0) {
            result = 2;
        } else if (_n == 1) {
            result = 1;
        } else {
            result = lucasRecursiveTerm(_n - 1) + lucasRecursiveTerm(_n - 2);
        }

        return result;
    }

    /**
     * @notice Computes the first n (0-indexed) Lucas numbers using recursion
     * @dev It is based on lucasRecursiveTerm => consume a lot of gas
     * for large _n.
     */
    function lucasRecursive(uint256 _n) public pure returns (uint256[] memory) {
        uint256[] memory result = new uint256[](_n + 1);

        for (uint256 i = 0; i < _n + 1; i++) {
            result[i] = lucasRecursiveTerm(i);
        }

        return result;
    }

    /**
     * @notice Computes the n_th (0-indexed) Lucas numbers.
     */
    function lucasDynamicTerm(uint256 _n) public pure returns (uint256) {
        uint256 a = 2;
        uint256 b = 1;
        uint256 c;

        for (uint256 i = 0; i < _n; i++) {
            c = b;
            b = a + b;
            a = c;
        }

        return a;
    }

    /**
     * @notice Computes the first n (0-indexed) Lucas numbers
     * @dev No 'limitation' in term of gas consumption.
     */
    function lucasDynamic(uint256 _n) public pure returns (uint256[] memory) {
        uint256[] memory result = new uint256[](_n + 1);

        for (uint256 i = 0; i < _n + 1; i++) {
            result[i] = lucasDynamicTerm(i);
        }

        return result;
    }
}
