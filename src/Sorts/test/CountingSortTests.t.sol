
contract CountingSortTests {
    
    CountingSort countingSort;
    
    constructor() {
        countingSort = new CountingSort();
    }
    
    function testSort() external {
        uint256[] memory input = new uint256[](7);
        input[0] = 4;
        input[1] = 2;
        input[2] = 9;
        input[3] = 5;
        input[4] = 1;
        input[5] = 7;
        input[6] = 3;
        
        uint256[] memory expected = new uint256[](7);
        expected[0] = 1;
        expected[1] = 2;
        expected[2] = 3;
        expected[3] = 4;
        expected[4] = 5;
        expected[5] = 7;
        expected[6] = 9;
        
        uint256[] memory sorted = countingSort.sort(input);
        
        for (uint256 i = 0; i < sorted.length; i++) {
            assert(sorted[i] == expected[i]);
        }
    }
}