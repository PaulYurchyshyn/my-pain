class Solution {
  int removeElement(List<int> nums, int val) {
    int j = 0;
    for (var i in nums) {
      if (i != val) {
        nums[j++] = i;
      }
    }
    return j;
  }
}
