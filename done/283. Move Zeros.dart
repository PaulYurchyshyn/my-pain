class Solution {
  void moveZeroes(List<int> nums) {
    List<int> temp = [];
    int j = 0;
    for (var i = 0; i < nums.length; i++) {
      temp.add(0);
    }
    for (var i = 0; i < nums.length; i++) {
      if (nums[i] != 0) {
        temp[j] = nums[i];
        j++;
      }
    }
    for (var i = 0; i < nums.length; i++) {
      nums[i] = temp[i];
    }
  }
}
