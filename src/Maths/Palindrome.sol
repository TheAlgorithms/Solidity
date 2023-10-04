// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PalindromeChecker {
    // Function to check if a given string is a palindrome
    function isPalindrome(string memory str) public pure returns (bool) {
        // Convert the input string to a bytes array
        bytes memory bytesStr = bytes(str);
        // Get the length of the string
        uint256 len = bytesStr.length;

        // Loop through the first half of the string
        for (uint256 i = 0; i < len / 2; i++) {
            // Compare characters from the start and end of the string
            if (bytesStr[i] != bytesStr[len - 1 - i]) {
                // If characters don't match, return false (not a palindrome)
                return false;
            }
        }
        
        // If the loop completes without finding mismatches, return true (a palindrome)
        return true;
    }
}
