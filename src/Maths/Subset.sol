// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SubsetGenerator {
    // Function to generate all possible subsets of an input array
    function generateSubsets(uint[] memory arr) public pure returns (uint[][] memory) {
        uint n = arr.length; // Get the length of the input array
        uint[][] memory subsets = new uint[][](2**n); // Initialize an array to store subsets
        
        // Loop through all possible binary combinations
        for (uint i = 0; i < 2**n; i++) {
            uint[] memory subset = new uint[](n); // Create an array for the current subset
            uint count = 0; // Counter for the number of elements in the subset
            
            // Loop through the bits of the current binary combination
            for (uint j = 0; j < n; j++) {
                // Check if the j-th bit of i is set to 1
                if ((i & (1 << j)) != 0) {
                    subset[count] = arr[j]; // Include the element in the subset
                    count++; // Increment the count of elements in the subset
                }
            }
            
            // Create a new array to store the final subset (with only the necessary elements)
            subsets[i] = new uint[](count);
            for (uint k = 0; k < count; k++) {
                subsets[i][k] = subset[k]; // Copy the elements to the final subset
            }
        }
        
        return subsets; // Return the array of subsets
    }
}
