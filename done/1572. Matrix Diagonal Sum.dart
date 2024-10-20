class Solution {
  int diagonalSum(List<List<int>> mat) {
    int ans = 0;
    int matLength = mat.length;
    for (var i = 0; i < matLength; i++) {
      if (matLength - 1 - i != i) {
        ans += mat[i][i] + mat[i][matLength - 1 - i];
      } else {
        ans += mat[i][i];
      }
    }
    return ans;
  }
}
