pragma solidity ^0.8.0;

import {Fibonacci} from "./fibonacci.sol";

contract testFibonacci is Fibonacci {
    function isPointerArrayEquals(uint[] memory _a, uint[] memory _b) public pure returns (bool isGood) {
        assembly {
            isGood := eq(_a, _b)
        }
    }

    function testGoodFibRecursiveTerm() public pure {
        require(fibRecursiveTerm(0) == 0, "Fibonacci O-th term is 0.");
        require(fibRecursiveTerm(1) == 1, "Fibonacci 1-th term is 1.");
        require(fibRecursiveTerm(2) == 1, "Fibonacci 2-th term is 1.");
        require(fibRecursiveTerm(3) == 2, "Fibonacci 3-th term is 2.");
        require(fibRecursiveTerm(4) == 3, "Fibonacci 4-th term is 3.");
        require(fibRecursiveTerm(5) == 5, "Fibonacci 5-th term is 5.");
        require(fibRecursiveTerm(6) == 8, "Fibonacci 6-th term is 8.");
        require(fibRecursiveTerm(7) == 13, "Fibonacci 7-th term is 13.");
        require(fibRecursiveTerm(8) == 21, "Fibonacci 8-th term is 21.");
        require(fibRecursiveTerm(9) == 34, "Fibonacci 9-th term is 34.");
        require(fibRecursiveTerm(10) == 55, "Fibonacci 10-th term is 55.");
        require(fibRecursiveTerm(17) == 1597, "Fibonacci 17-th term is 1597.");
        //assert(fibRecursiveTerm(99) == 218922995834555169026); Consume too much gas
    }

    function testGoodFibRecursive() public pure {
        uint[] memory expected_total= new uint[](11);
        uint[] memory result;

        expected_total[0]= 0;
        result = fibRecursive(0);
        require(expected_total[0] == result[0], "Fibonacci 0-th suite last value is 0.");

        expected_total[1]= 1;
        result = fibRecursive(1);
        require(expected_total[1] == result[1], "Fibonacci 1-th suite last value is 1.");

        expected_total[2]= 1;
        result = fibRecursive(2);
        require(expected_total[2] == result[2], "Fibonacci 2-th suite last value is 1.");

        expected_total[3]= 2;
        result = fibRecursive(3);
        require(expected_total[3] == result[3], "Fibonacci 3-th suite last value is 2.");

        expected_total[4]= 3;
        result = fibRecursive(4);
        require(expected_total[4] == result[4], "Fibonacci 4-th suite last value is 3.");

        expected_total[5]= 5;
        result = fibRecursive(5);
        require(expected_total[5] == result[5], "Fibonacci 5-th suite last value is 5.");

        expected_total[6]= 8;
        expected_total[7]= 13;
        expected_total[8]= 21;
        expected_total[9]= 34;
        expected_total[10]= 55;

        result = fibRecursive(10);
        for (uint i= 0; i <= 10; i++) {
            require(result[i] == expected_total[i],
                string(abi.encodePacked("Fibonacci expected value for ", i, "-th is ", expected_total[i]))
            );
        }
    }

    function testGoodFibMemoization() public pure {
        uint[] memory expected_total= new uint[](11);
        uint[] memory result;

        expected_total[0]= 0;
        result = fibMemoization(0);
        require(expected_total[0] == result[0], "Fibonacci 0-th suite last value is 0.");

        expected_total[1]= 1;
        result = fibMemoization(1);
        require(expected_total[1] == result[1], "Fibonacci 1-th suite last value is 1.");

        expected_total[2]= 1;
        result = fibMemoization(2);
        require(expected_total[2] == result[2], "Fibonacci 2-th suite last value is 1.");

        expected_total[3]= 2;
        result = fibMemoization(3);
        require(expected_total[3] == result[3], "Fibonacci 3-th suite last value is 2.");

        expected_total[4]= 3;
        result = fibMemoization(4);
        require(expected_total[4] == result[4], "Fibonacci 4-th suite last value is 3.");

        expected_total[5]= 5;
        result = fibMemoization(5);
        require(expected_total[5] == result[5], "Fibonacci 5-th suite last value is 5.");

        expected_total[6]= 8;
        expected_total[7]= 13;
        expected_total[8]= 21;
        expected_total[9]= 34;
        expected_total[10]= 55;

        result = fibMemoization(10);
        for (uint i= 0; i <= 10; i++) {
            require(result[i] == expected_total[i],
                string(abi.encodePacked("Fibonacci expected value for ", i, "-th is ", expected_total[i]))
            );
        }

        result= fibMemoization(99);
        require(result[99] == 218922995834555169026, "Fibonacci 99-th suite last value.");
    }
}
