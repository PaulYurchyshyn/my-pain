class Solution {
  int singleNumberII(List<int> nums) {
    for (var e in nums) {
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
