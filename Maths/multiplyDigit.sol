// Solidity program to demonstrate the multiplication
pragma solidity 0.6.6;

// Creating a contract
contract multiplyDigit {
    int128 firstNo;
    int128 secondNo;

    function firstNoSet(int128 x) public {
        firstNo = x;
    }

    function secondNoSet(int128 y) public {
        secondNo = y;
    }

    function multiply() public view returns (int128) {
        int128 answer = firstNo * secondNo;
        return answer;
    }
}
