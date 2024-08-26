class Solution {
  int searchInsert(List<int> nums, int target) {
    if (nums[0] >= target) {
      return 0;
    }
    for (var i = 0; i < nums.length; i++) {
      if (nums[i] >= target) {
        return i;
      }
    }
    return nums.length;
  }
}
