class Solution {
  int climbStairs(int n) {
    if (n <= 2) return n;
    List<int> dp = List.filled(n + 1, 0);
    dp[0] = 1;
    dp[1] = 1;

    for (var i = 2; i < dp.length; i++) {
      dp[i] = dp[i - 1] + dp[i - 2];
    }

    return dp[n];
  }
}
