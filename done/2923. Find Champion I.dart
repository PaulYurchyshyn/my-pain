class Solution {
  int findChampion(List<List<int>> grid) {
    int ans = -1;
    int power = 0;
    for (var i = 0; i < grid.length; i++) {
      int temp = 0;
      for (var j = 0; j < grid.length; j++) temp += grid[i][j];
      if (temp > power) {
        power = temp;
        ans = i;
      }
    }
    return ans;
  }
}
