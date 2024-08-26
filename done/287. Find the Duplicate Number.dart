class Solution {
  int findDuplicate(List<int> nums) {
    nums.sort();
    for (var i = 0; i < nums.length - 1; i++) {
      int m = nums[i], n = nums[i + 1];
      if (m == n) {
        return nums[i];
      }
    }
    return -1;
  }
}
