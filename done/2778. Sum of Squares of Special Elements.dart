class Solution {
  int sumOfSquares(List<int> nums) {
    int result = 0, n = nums.length;
    for (var i = 1; i <= n; i++) {
      if (n % i == 0) {
        result += nums[i - 1] * nums[i - 1];
      }
    }
    return result;
  }
}
