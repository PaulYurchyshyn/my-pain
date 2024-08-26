class Solution {
  int findPeakElement(List<int> nums) {
    if (nums.length == 1) {
      return 0;
    }
    if (nums[0] > nums[1]) {
      return 0;
    }
    if (nums[nums.length - 1] > nums[nums.length - 2]) {
      return nums.length - 1;
    }
    for (var i = 1; i < nums.length - 1; i++) {
      if (nums[i] > nums[i + 1]) {
        if (nums[i] > nums[i - 1]) {
          return i;
        }
      }
    }
    return 0;
  }
}
