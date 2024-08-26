class Solution {
  int findMaxK(List<int> nums) {
    int max = -1;
    for (var i = 0; i < nums.length; i++) {
      if (nums[i] > 0) {
        if (nums[i] > max && nums.contains(-nums[i])) {
          max = nums[i];
        }
      }
    }
    return max;
  }
}
