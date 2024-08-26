class Solution {
  int majorityElement(List<int> nums) {
    int majorelement = 0;
    int i = 0, si = 0;
    for (var e in nums.toSet()) {
      for (var j = 0; j < nums.length; j++) {
        if (e == nums[j]) {
          i++;
        }
      }
      if (i > si) {
        si = i;
        majorelement = e;
      }
      i = 0;
    }
    return majorelement;
  }
}
