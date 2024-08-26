class Solution {
  int maximumWealth(List<List<int>> accounts) {
    int _sum(List<int> nums) {
      int ans = 0;
      for (var e in nums) {
        ans += e;
      }
      return ans;
    }

    int ans = 0;

    for (var e in accounts) {
      int temp = _sum(e);
      if (temp > ans) {
        ans = temp;
      }
    }
    return ans;
  }
}
