class Solution {
  int missingNumber(List<int> nums) {
    for (var i = 0; i < nums.length; i++) {
      if (!nums.contains(i)) {
        return i;
      }
    }
    return nums.length;
  }
}
