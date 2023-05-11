pragma solidity ^0.8.0;

contract CountingSort {
    
    function sort(uint256[] memory data) external pure returns (uint256[] memory) {
        uint256 length = data.length;
        
        if (length == 0)
            return data;
        
        // Find the maximum element in the array
        uint256 max = data[0];
        for (uint256 i = 1; i < length; i++) {
            if (data[i] > max)
                max = data[i];
        }
        
        // Create a count array to store the count of each element
        uint256[] memory count = new uint256[](max + 1);
        
        // Calculate the count of each element
        for (uint256 i = 0; i < length; i++) {
            count[data[i]]++;
        }
        
        // Calculate the cumulative count array
        for (uint256 i = 1; i <= max; i++) {
            count[i] += count[i - 1];
        }
        
        // Create a sorted array
        uint256[] memory sortedData = new uint256[](length);
        
        // Build the sorted array
        for (uint256 i = length - 1; i >= 0; i--) {
            sortedData[count[data[i]] - 1] = data[i];
            count[data[i]]--;
        }
        
        return sortedData;
    }
}