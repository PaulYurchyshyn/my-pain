class Solution {
  int countElements(List<int> nums) {
    int max(int a, int b) => a > b ? a : b;
    int min(int a, int b) => a > b ? b : a;
    int ans = 0;
    int maxNum = nums[0], minNum = nums[0];
    for (var i = 0; i < nums.length; i++) {
      maxNum = max(maxNum, nums[i]);
      minNum = min(minNum, nums[i]);
    }
    for (var i = 0; i < nums.length; i++) {
      if (maxNum > nums[i] && nums[i] > minNum) ans++;
    }
    return ans;
  }
}
