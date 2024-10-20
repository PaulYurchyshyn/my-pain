class Solution {
  int numberOfPoints(List<List<int>> nums) {
    Set<int> ans = {};
    for (var arr in nums) {
      for (var i = arr[0]; i <= arr[1]; i++) {
        ans.add(i);
      }
    }
    return ans.length;
  }
}
