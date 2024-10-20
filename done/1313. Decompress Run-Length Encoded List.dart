class Solution {
  List<int> decompressRLElist(List<int> nums) {
    List<int> ans = [];
    for (var i = 0; i < nums.length ~/ 2; i++) {
      ans.addAll(List.filled(nums[2 * i], nums[2 * i + 1]));
    }
    return ans;
  }
}
