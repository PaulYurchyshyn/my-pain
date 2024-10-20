class Solution {
  List<int> luckyNumbers(List<List<int>> matrix) {
    int _minimumIntInRow(List<int> arr) {
      int minIndex = 0;
      for (var i = 1; i < arr.length; i++) {
        if (arr[minIndex] > arr[i]) {
          minIndex = i;
        }
      }
      return minIndex;
    }

    List<int> ans = [];
    for (var e in matrix) {
      int minIndex = _minimumIntInRow(e);
      ans.add(e[minIndex]);
      for (var i = 0; i < matrix.length; i++) {
        if (e[minIndex] < matrix[i][minIndex]) {
          ans.removeLast();
          break;
        }
      }
    }
    return ans;
  }
}
