class Solution {
  bool isArraySpecial(List<int> nums) {
    if (nums.length == 1) {
      return false;
    }
    for (var i = 0; i < nums.length - 1; i++) {
      if ((nums[i].isEven && nums[i + 1].isEven) ||
          (nums[i].isOdd && nums[i + 1].isOdd)) {
        return false;
      }
    }
    return true;
  }
}
