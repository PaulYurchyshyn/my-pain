class Solution {
  int maxSum(List<List<int>> grid) {
    int sum = 0;
    for (var i = 0; i < grid.length - 2; i++) {
      for (var j = 0; j < grid[i].length - 2; j++) {
        int tsum = grid[i][j] +
            grid[i][j + 1] +
            grid[i][j + 2] +
            grid[i + 1][j + 1] +
            grid[i + 2][j] +
            grid[i + 2][j + 1] +
            grid[i + 2][j + 2];
        if (tsum > sum) {
          sum = tsum;
        }
      }
    }
    return sum;
  }
}
