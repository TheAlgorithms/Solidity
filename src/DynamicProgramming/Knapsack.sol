// SPDX-License-Identifier: MIT
// https://atcoder.jp/contests/dp/tasks/dp_d
// https://www.geeksforgeeks.org/0-1-knapsack-problem-dp-10/

pragma solidity ^0.8.13;
import "forge-std/console.sol";

contract Knapsack {
    mapping(uint256 => mapping(uint256 => uint256)) dp;

    function knapsack(
        uint256 numberOfItems,
        uint256 totalWeight,
        uint256[] memory weights,
        uint256[] memory values
    ) public returns (uint256) {
        for (uint256 i = 0; i < numberOfItems; i++) {
            for (uint256 j = 0; j <= totalWeight; j++) {
                if (i == 0) {
                    if (j >= weights[0]) {
                        dp[i][j] = values[0];
                        continue;
                    }
                    dp[i][j] = 0;
                    continue;
                }
                if (j < weights[i]) {
                    dp[i][j] = dp[i - 1][j] + 0;
                    continue;
                }

                uint256 a = dp[i - 1][j - weights[i]] + values[i];
                uint256 b = dp[i - 1][j];

                dp[i][j] = a >= b ? a : b;
            }
        }

        return dp[numberOfItems - 1][totalWeight];
    }
}

contract KnapsackTestCases {
    Knapsack knapsack;
    uint256 n = 6;
    uint256 w = 15;

    uint256[] values = [5, 6, 4, 6, 5, 2];
    uint256[] weights = [6, 5, 6, 6, 3, 7];

    function test1() public returns (uint256) {
        knapsack = new Knapsack();

        return knapsack.knapsack(n, w, weights, values);
    }
}
