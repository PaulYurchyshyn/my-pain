class Solution {
  bool isGood(List<int> nums) {
    if (nums.length == 1) return false;
    nums.sort();
    for (var i = 0; i < nums.length - 1; i++) {
      if (nums[i] == nums[i + 1] && nums[i] != nums.last && i + 1 != nums[i]) {
        return false;
      }
    }
    if (nums.last != nums[nums.length - 2]) {
      return false;
    } else {
      return true;
    }
  }
}
