class Solution {
  List<int> findMissingAndRepeatedValues(List<List<int>> grid) {
    List<int> gridToArray(List<List<int>> grid) {
      List<int> ans = [];
      for (var e in grid) {
        ans.addAll(e);
      }
      ans.sort();
      return ans;
    }

    List<int> ans = [0, 0];
    List<int> temp = gridToArray(grid);
    for (var i = 1; ans[0] == 0 || ans[1] == 0; i++) {
      if (temp.contains(i)) {
        temp.remove(i);
        if (temp.contains(i)) {
          ans[0] = i;
          temp.remove(i);
        }
      } else {
        ans[1] = i;
      }
    }
    return ans;
  }
}
