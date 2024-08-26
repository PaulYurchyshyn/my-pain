class Solution {
  int duplicateNumbersXOR(List<int> nums) {
    List<int> duplicateList = [];
    for (var i = 0; i < nums.length;) {
      int temp = nums[i];
      nums.remove(temp);
      if (nums.contains(temp)) {
        duplicateList.add(temp);
        nums.remove(temp);
      }
    }
    int result = 0;
    for (var i = 0; i < duplicateList.length; i++) {
      result = result ^ duplicateList[i];
    }
    return result;
  }
}
