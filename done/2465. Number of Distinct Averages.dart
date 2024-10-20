class Solution {
  int distinctAverages(List<int> nums) {
    Set<double> ans = {};
    nums.sort();
    while (nums.isNotEmpty) {
      double avg = (nums[0] + nums[nums.length - 1]) / 2;
      nums.removeAt(0);
      nums.removeLast();
      ans.add(avg);
    }
    return ans.length;
  }
}
