class Solution {
  int maxAscendingSum(List<int> nums) {
    int subSubArr(int start, int end) {
      int ans = 0;
      for (var e in nums.sublist(start, end)) ans += e;
      return ans;
    }

    int ans = 0;
    int temp = 0;
    int start = 0, end = 0;
    for (var i = 0; i < nums.length - 1; i++) {
      if (nums[i] >= nums[i + 1]) {
        end = i + 1;
        temp = subSubArr(start, end);
        if (temp > ans) ans = temp;
        start = i + 1;
      }
    }
    temp = subSubArr(start, nums.length);
    if (temp > ans) ans = temp;
    return ans;
  }
}
