class Solution {
  int findLengthOfLCIS(List<int> nums) {
    int maxAns = 1;
    int temp = 1;
    for (var i = 0; i < nums.length - 1; i++) {
      if (nums[i] < nums[i + 1]) {
        temp++;
      } else {
        if (temp > maxAns) {
          maxAns = temp;
        }
        temp = 1;
      }
    }
    return temp > maxAns ? temp : maxAns;
  }
}
