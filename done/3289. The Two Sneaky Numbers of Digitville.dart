class Solution {
  List<int> getSneakyNumbers(List<int> nums) {
    nums.sort();
    int length = nums.length - 2;
    for (var i = 0; i <= length; i++) {
      nums.remove(i);
    }
    return nums;
  }
}
