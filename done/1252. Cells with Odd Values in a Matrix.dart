class Solution {
  int oddCells(int m, int n, List<List<int>> indices) {
    List<List<int>> matrix = [];
    for (var i = 0; i < m; i++) {
      matrix.add(List.generate(n, (int index) => 0));
    }
    for (var e in indices) {
      for (var i = 0; i < n; i++) {
        matrix[e[0]][i] = matrix[e[0]][i] + 1;
      }
      for (var i = 0; i < m; i++) {
        matrix[i][e[1]] = matrix[i][e[1]] + 1;
      }
    }
    int ans = 0;
    for (var e in matrix) {
      for (var v in e) {
        if (v % 2 == 1) {
          ans++;
        }
      }
    }
    return ans;
  }
}
