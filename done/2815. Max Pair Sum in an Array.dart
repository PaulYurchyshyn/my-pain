class Solution {
  int maxSum(List<int> nums) {
    int ans = -1;
    bool equalLargeDigits(int n1, int n2) {
      int ans1 = 0, ans2 = 0;
      for (var e in n1.toString().split('')) {
        if (int.parse(e) > ans1) {
          ans1 = int.parse(e);
        }
      }
      for (var e in n2.toString().split('')) {
        if (int.parse(e) > ans2) {
          ans2 = int.parse(e);
        }
      }
      return ans1 == ans2;
    }

    for (var i = 0; i < nums.length - 1; i++) {
      for (var j = i + 1; j < nums.length; j++) {
        if (equalLargeDigits(nums[i], nums[j]) && nums[i] + nums[j] > ans) {
          ans = nums[i] + nums[j];
        }
      }
    }

    return ans;
  }
}
