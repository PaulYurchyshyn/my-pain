class Solution {
  List<int> targetIndices(List<int> nums, int target) {
    List<int> ans = [];
    nums.sort();
    for (var i = 0; i < nums.length; i++) {
      if (nums[i] == target) {
        ans.add(i);
      }
      if (nums[i] > target) {
        break;
      }
    }
    return ans;
  }
}
