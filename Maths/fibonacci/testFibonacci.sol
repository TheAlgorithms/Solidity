pragma solidity ^0.8.0;

import {Fibonacci} from "./fibonacci.sol";
import {DeployedAddresses} from "truffle/DeployedAddresses.sol";


contract testFibonacci {
    Fibonacci fib= Fibonacci= Fibonacci(DeployedAddresses.Fibonacci());

    function testGoodFibRecursiveTerm() public pure {
        require(fib.fibRecursiveTerm(0) == 0, "Fibonacci O-th term is 0.");
        require(fib.fibRecursiveTerm(1) == 1, "Fibonacci 1-th term is 1.");
        require(fib.fibRecursiveTerm(2) == 1, "Fibonacci 2-th term is 1.");
        require(fib.fibRecursiveTerm(3) == 2, "Fibonacci 3-th term is 2.");
        require(fib.fibRecursiveTerm(4) == 3, "Fibonacci 4-th term is 3.");
        require(fib.fibRecursiveTerm(5) == 5, "Fibonacci 5-th term is 5.");
        require(fib.fibRecursiveTerm(6) == 8, "Fibonacci 6-th term is 8.");
        require(fib.fibRecursiveTerm(7) == 13, "Fibonacci 7-th term is 13.");
        require(fib.fibRecursiveTerm(8) == 21, "Fibonacci 8-th term is 21.");
        require(fib.fibRecursiveTerm(9) == 34, "Fibonacci 9-th term is 34.");
        require(fib.fibRecursiveTerm(10) == 55, "Fibonacci 10-th term is 55.");
        require(fib.fibRecursiveTerm(17) == 1597, "Fibonacci 17-th term is 1597.");
        //assert(fib.fibRecursiveTerm(99) == 218922995834555169026); Consume too much gas
    }

    function testGoodFibRecursive() public pure {
        uint[] memory expected_total= new uint[](11);
        uint[] memory result;

        expected_total[0]= 0;
        result = fib.fibRecursive(0);
        require(expected_total[0] == result[0], "Fibonacci 0-th suite last value is 0.");

        expected_total[1]= 1;
        result = fib.fibRecursive(1);
        require(expected_total[1] == result[1], "Fibonacci 1-th suite last value is 1.");

        expected_total[2]= 1;
        result = fib.fibRecursive(2);
        require(expected_total[2] == result[2], "Fibonacci 2-th suite last value is 1.");

        expected_total[3]= 2;
        result = fib.fibRecursive(3);
        require(expected_total[3] == result[3], "Fibonacci 3-th suite last value is 2.");

        expected_total[4]= 3;
        result = fib.fibRecursive(4);
        require(expected_total[4] == result[4], "Fibonacci 4-th suite last value is 3.");

        expected_total[5]= 5;
        result = fib.fibRecursive(5);
        require(expected_total[5] == result[5], "Fibonacci 5-th suite last value is 5.");

        expected_total[6]= 8;
        expected_total[7]= 13;
        expected_total[8]= 21;
        expected_total[9]= 34;
        expected_total[10]= 55;

        result = fib.fibRecursive(10);
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
        result = fib.fibMemoization(0);
        require(expected_total[0] == result[0], "Fibonacci 0-th suite last value is 0.");

        expected_total[1]= 1;
        result = fib.fibMemoization(1);
        require(expected_total[1] == result[1], "Fibonacci 1-th suite last value is 1.");

        expected_total[2]= 1;
        result = fib.fibMemoization(2);
        require(expected_total[2] == result[2], "Fibonacci 2-th suite last value is 1.");

        expected_total[3]= 2;
        result = fib.fibMemoization(3);
        require(expected_total[3] == result[3], "Fibonacci 3-th suite last value is 2.");

        expected_total[4]= 3;
        result = fib.fibMemoization(4);
        require(expected_total[4] == result[4], "Fibonacci 4-th suite last value is 3.");

        expected_total[5]= 5;
        result = fib.fibMemoization(5);
        require(expected_total[5] == result[5], "Fibonacci 5-th suite last value is 5.");

        expected_total[6]= 8;
        expected_total[7]= 13;
        expected_total[8]= 21;
        expected_total[9]= 34;
        expected_total[10]= 55;

        result = fib.fibMemoization(10);
        for (uint i= 0; i <= 10; i++) {
            require(result[i] == expected_total[i],
                string(abi.encodePacked("Fibonacci expected value for ", i, "-th is ", expected_total[i]))
            );
        }

        result= fib.fibMemoization(99);
        require(result[99] == 218922995834555169026, "Fibonacci 99-th suite last value.");
    }
}
