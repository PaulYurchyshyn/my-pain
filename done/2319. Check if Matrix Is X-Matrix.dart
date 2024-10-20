class Solution {
  bool checkXMatrix(List<List<int>> grid) {
    int n = grid.length;
    for (var i = 0; i < n; i++) {
      for (var j = 0; j < n; j++) {
        if (i == j || j == n - i - 1) {
          if (grid[i][j] == 0) {
            return false;
          }
        } else {
          if (grid[i][j] != 0) {
            return false;
          }
        }
      }
    }
    return true;
  }
}
