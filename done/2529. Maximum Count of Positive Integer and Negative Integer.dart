class Solution {
  int maximumCount(List<int> nums) {
    int maxPositive = 0;
    int maxNegative = 0;
    for (var e in nums) {
      if (e > 0) {
        maxPositive++;
        continue;
      }
      if (e < 0) {
        maxNegative++;
        continue;
      }
    }
    return maxPositive > maxNegative ? maxPositive : maxNegative;
  }
}
