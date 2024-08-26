class Solution {
  int thirdMax(List<int> nums) {
    nums.sort();
    if (nums.length < 3) return nums.last;
    Set<int> result = nums.toSet();
    int j = 0;
    for (var i = result.length - 1; i >= 0; i--) {
      j++;
      if (j == 3) {
        return result.elementAt(i);
      }
    }
    return -1;
  }
}
