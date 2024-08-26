class Solution {
  bool satisfiesConditions(List<List<int>> grid) {
    if (grid.length == 1 && grid[0].length == 1) {
      return true;
    }
    for (var i = 0; i < grid[0].length; i++) {
      for (var j = 0; j < grid.length - 1; j++) {
        if (grid[j][i] != grid[j + 1][i]) {
          return false;
        }
      }
    }
    for (var i = 0; i < grid.length; i++) {
      for (var j = 0; j < grid[i].length - 1; j++) {
        if (grid[i][j] == grid[i][j + 1]) {
          return false;
        }
      }
    }
    return true;
  }
}
