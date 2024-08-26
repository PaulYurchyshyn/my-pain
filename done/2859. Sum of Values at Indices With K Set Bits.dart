class Solution {
  int sumIndicesWithKSetBits(List<int> nums, int k) {
    int result = 0;
    for (var i = 0; i < nums.length; i++) {
      int c = i;
      int m = 0;
      while (c > 0) {
        if (c % 2 == 1) {
          c -= 1;
          m += 1;
        }
        c = c ~/ 2;
      }
      if (m == k) {
        result += nums[i];
      }
    }
    return result;
  }
}
