class Solution {
  int maxStrength(List<int> nums) {
    if (nums.length == 1) return nums[0];
    int ans = 1;
    List<int> negative = [];
    List<int> positive = [];
    for (var e in nums) {
      if (e > 0) {
        positive.add(e);
        continue;
      }
      if (e < 0) negative.add(e);
    }
    if (positive.isEmpty && negative.length < 2) return 0;
    negative.sort();
    for (var i = 0; i < positive.length; i++) ans *= positive[i];
    for (var i = 0; i < negative.length ~/ 2 * 2; i++) ans *= negative[i];
    return ans;
  }
}
