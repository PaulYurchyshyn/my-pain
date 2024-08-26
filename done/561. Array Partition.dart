class Solution {
  int arrayPairSum(List<int> nums) {
    int _min(int a, int b) => a > b ? b : a;
    nums.sort();
    int ans = 0;
    for (var i = 0; i < nums.length; i += 2) {
      ans += _min(nums[i], nums[i + 1]);
    }
    return ans;
  }
}
