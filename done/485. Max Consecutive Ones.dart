class Solution {
  int findMaxConsecutiveOnes(List<int> nums) {
    int count = 0, fcount = 0;
    for (var i = 0; i < nums.length; i++) {
      if (nums[i] == 1) {
        count++;
      } else {
        if (count > fcount) {
          fcount = count;
        }
        count = 0;
      }
    }
    if (count > fcount) {
      fcount = count;
    }
    return fcount;
  }
}
