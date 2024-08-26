class Solution {
  int singleNumber(List<int> nums) {
    for (var e in nums.toList()) {
      int count = 0;
      for (var en in nums) {
        if (e == en) {
          count++;
        }
      }
      if (count == 1) {
        return e;
      }
    }
    return 0;
  }
}
