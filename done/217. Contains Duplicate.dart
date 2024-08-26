class Solution {
  bool containsDuplicate(List<int> nums) {
    nums.sort();
    for (var i = 0; i < nums.length - 1; i++) {
      if (nums[i] == nums[i + 1]) {
        return true;
      }
    }
    return false;
  }
}
