class Solution {
  List<int> searchRange(List<int> nums, int target) {
    int start = -1, finish = -1;
    if (!nums.contains(target)) return [start, finish];
    for (var i = 0; i < nums.length; i++) {
      if (start == -1 && nums[i] == target) {
        start = i;
      }
      if (i != nums.length-1 && nums[i] != nums[i + 1] && nums[i] == target) {
        finish = i;
      }
    }
    finish = finish == -1 ? nums.length - 1 : finish;
    return [start, finish];
  }
}