class Solution {
  int deleteGreatestValue(List<List<int>> grid) {
    int max = 0;
    int result = 0;
    List<int> resultMatrix = [];
    while (grid[0].isNotEmpty) {
      for (var i = 0; i < grid.length; i++) {
        max = 0;
        for (var j = 0; j < grid[i].length; j++) {
          if (grid[i][j] > max) {
            max = grid[i][j];
          }
        }
        resultMatrix.add(max);
        grid[i].remove(max);
      }
      max = 0;
      for (var i = 0; i < resultMatrix.length; i++) {
        if (resultMatrix[i] > max) {
          max = resultMatrix[i];
        }
      }
      resultMatrix.clear();
      result += max;
    }
    return result;
  }
}
