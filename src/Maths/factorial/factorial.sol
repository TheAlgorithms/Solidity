pragma solidity ^0.8.0;

/** @title This is a Solidity implementation to factorial.
  * @author Wenceslas Sanchez (wenceslas-sanchez)
  */
contract Factorial {

    /** @notice Compute the factorial of a number iteratively.
      *
     */
    function factoIterative(int _n) public pure returns (int) {
        int result= 1;

        for (int i= 2; i <= _n; ++i){
            result *= i;
        }

        return result;
    }

    /** @notice Compute the factorial of a number recursively.
      *
     */
    function factoRecursive(int _n) public pure returns (int) {
        int result;

        if (_n == 1) {
            result = 1;
        } else {
           result=  _n * factoRecursive(_n - 1);
        }

        return result;
    }

}
