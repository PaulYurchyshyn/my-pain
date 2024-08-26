class Solution {
  List<int> applyOperations(List<int> nums) {
    List<int> result = [];
    for (var i = 0; i < nums.length; i++) {
      if (i != nums.length - 1 && nums[i] == nums[i + 1] && nums[i] != 0) {
        result.add(nums[i] + nums[i + 1]);
        i++;
      } else if (nums[i] != 0) {
        result.add(nums[i]);
      }
    }
    for (var i = result.length; i < nums.length; i++) {
      result.add(0);
    }
    return result;
  }
}
