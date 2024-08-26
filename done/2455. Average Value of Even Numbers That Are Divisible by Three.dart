class Solution {
  int averageValue(List<int> nums) {
    int s = 0, i = 0;
    for (var e in nums) {
      if (e % 6 == 0) {
        s += e;
        i++;
      }
    }
    if (i == 0) {
      return 0;
    }
    return s ~/ i;
  }
}
