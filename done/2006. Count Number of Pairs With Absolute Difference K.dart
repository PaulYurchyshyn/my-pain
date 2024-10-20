class Solution {
  int countKDifference(List<int> nums, int k) {
    int abs(int n) => n >= 0 ? n : -n;

    int ans = 0;
    for (var i = 0; i < nums.length - 1; i++) {
      for (var j = i + 1; j < nums.length; j++) {
        int temp = abs((nums[i] - nums[j]));
        if (temp == k) ans++;
      }
    }
    return ans;
  }
}
