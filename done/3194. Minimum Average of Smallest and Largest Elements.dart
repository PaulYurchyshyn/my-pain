class Solution {
  double minimumAverage(List<int> nums) {
    nums.sort();
    double result = (nums[0] + nums[nums.length - 1]) / 2;
    nums.removeAt(0);
    nums.removeAt(nums.length - 1);
    while (nums.isNotEmpty) {
      double temp = (nums[0] + nums[nums.length - 1]) / 2;
      if (result > temp) {
        result = temp;
        nums.removeAt(0);
        nums.removeAt(nums.length - 1);
      } else {
        nums.removeAt(0);
        nums.removeAt(nums.length - 1);
      }
    }
    return result;
  }
}
