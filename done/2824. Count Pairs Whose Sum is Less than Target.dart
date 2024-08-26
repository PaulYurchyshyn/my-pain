class Solution {
  int countPairsI(List<int> nums, int target) {
    int result = 0;
    int n = nums.length;
    int i = 0;
    for (var j = 0; j < n; j++) {
      if (nums[i] + nums[j] < target && i != j) {
        result++;
      }
      if (j == n - 1 && i != n - 1) {
        i++;
        j = i;
      }
    }
    return result;
  }
}
