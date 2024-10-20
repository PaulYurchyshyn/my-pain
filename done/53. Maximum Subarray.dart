class Solution {
  int maxSubArray(List<int> nums) {
    int max(int a, int b) => a > b ? a : b;

    int currentMax = nums[0], ans = nums[0];

    for (var i = 1; i < nums.length; i++) {
      currentMax = max(nums[i], nums[i] + currentMax);
      ans = max(ans, currentMax);
    }
    return ans;
  }
}
