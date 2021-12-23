pragma solidity ^0.8.0;

/* @notice
 * @author Wenceslas Sanchez
 *
 * @dev
*/
contract Fibonacci {

    function fibRecursiveTerm(uint _n) public pure returns (uint) {
        uint result;

        if (_n < 2) {
            result = _n;
        } else {
            result = fibRecursiveTerm(_n - 1) + fibRecursiveTerm(_n - 2);
        }

        return result;
    }

    /* Naive implementation
     * @dev Not optimal at all => consume a lot of gaz
     *
    */
    function fibRecursive(uint _n) public pure returns (uint[] memory) {
        uint[] memory result= new uint[](_n);

        for (uint i = 0; i <= _n - 1; i++) {
            result[i]= fibRecursiveTerm(i);
        }

        return result;
    }

}

