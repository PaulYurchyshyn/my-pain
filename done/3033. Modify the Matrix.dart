class Solution {
  List<List<int>> modifiedMatrix(List<List<int>> matrix) {
    int max = 0;
    for (var i = 0; i < matrix[0].length; i++) {
      for (var j = 0; j < matrix.length; j++) {
        if (matrix[j][i] > max) {
          max = matrix[j][i];
        }
      }
      for (var j = 0; j < matrix.length; j++) {
        if (matrix[j][i] < 0) {
          matrix[j][i] = max;
        }
      }
      max = 0;
    }
    return matrix;
  }
}
