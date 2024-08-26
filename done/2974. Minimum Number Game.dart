class Solution {
  List<int> numberGame(List<int> nums) {
    List<int> result = [];
    int num_min;
    while (nums.length > 0) {
      num_min = 101;
      for (var i = 0; i < nums.length; i++) {
        if (nums[i] < num_min) {
          num_min = nums[i];
        }
      }
      nums.remove(num_min);
      result.add(num_min);
      num_min = 101;
      for (var i = 0; i < nums.length; i++) {
        if (nums[i] < num_min) {
          num_min = nums[i];
        }
      }
      nums.remove(num_min);
      result.insert(result.length - 1, num_min);
    }
    return result;
  }
}
