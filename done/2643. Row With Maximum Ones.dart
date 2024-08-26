class Solution {
  List<int> rowAndMaximumOnes(List<List<int>> mat) {
    List<int> result = [0, 0];
    for (var i = 0; i < mat.length; i++) {
      int tempCounter = 0;
      for (var j = 0; j < mat[i].length; j++) {
        if (mat[i][j] == 1) tempCounter++;
      }
      if (result[1] < tempCounter) {
        result[0] = i;
        result[1] = tempCounter;
      }
    }
    return result;
  }
}
