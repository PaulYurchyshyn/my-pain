class Solution {
  List<int> getFinalState(List<int> nums, int k, int multiplier) {
    int _minIndex(List<int> nums) {
      int ans = 0;
      for (var i = 0; i < nums.length; i++) {
        if (nums[ans] > nums[i]) {
          ans = i;
        }
      }
      return ans;
    }

    int i = 0;
    while (i < k) {
      int index = _minIndex(nums);
      nums[index] = nums[index] * k;
      i++;
    }

    return nums;
  }
}
