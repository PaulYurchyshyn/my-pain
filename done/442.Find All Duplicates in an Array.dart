class Solution {
  List<int> findDuplicates(List<int> nums) {
    List<int> result = [];
    nums.sort();
    if (nums.length <= 1) {
      return [];
    }
    for (var i = 0; i < nums.length - 1; i++) {
      if (nums[i] == nums[i + 1]) {
        result.add(nums[i]);
      }
    }
    return result;
  }
}
