class Solution {
  bool containsNearbyDuplicate(List<int> nums, int k) {
    if (k <= 0) {
      return false;
    }
    for (var i = 0; i < nums.length; i++) {
      for (var j = i + 1; j < nums.length; j++) {
        if (nums[i] == nums[j]) {
          return true;
        }
        if (j - i >= k) {
          break;
        }
      }
    }
    return false;
  }
}
