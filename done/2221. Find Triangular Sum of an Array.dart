class Solution {
  int triangularSum(List<int> nums) {
    while (nums.length > 1) {
      List<int> newNums = [];
      for (var i = 0; i < nums.length - 1; i++) {
        newNums.add((nums[i] + nums[i + 1]) % 10);
      }
      nums.clear();
      nums.addAll(newNums);
    }
    return nums[0];
  }
}
