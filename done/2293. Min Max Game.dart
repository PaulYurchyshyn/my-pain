import 'dart:math';

class Solution {
  int minMaxGame(List<int> nums) {
    while (nums.length > 1) {
      List<int> newNums = [];
      for (var i = 0; i < nums.length / 2; i++) {
        if (i % 2 == 0) {
          newNums.add(min(nums[2 * i], nums[2 * i + 1]));
        } else {
          newNums.add(max(nums[2 * i], nums[2 * i + 1]));
        }
      }
      nums = newNums;
    }
    return nums[0];
  }
}
