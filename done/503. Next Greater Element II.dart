class Solution {
  List<int> nextGreaterElements(List<int> nums) {
    List<int> result = [];
    for (var i = 0; i < nums.length; i++) {
      int j = i + 1;
      while (true) {
        if (j >= nums.length) {
          j = 0;
        }
        if (i == j) {
          result.add(-1);
          break;
        }
        if (nums[j] > nums[i]) {
          result.add(nums[j]);
          break;
        }
        j++;
      }
    }
    return result;
  }
}
