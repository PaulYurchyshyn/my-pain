class Solution {
  int findShortestSubArray(List<int> nums) {
    Map<int, int> frequency = {};
    for (var e in nums) {
      if (!frequency.containsKey(e)) {
        frequency[e] = 1;
      } else {
        frequency[e] = frequency[e]! + 1;
      }
    }
    int max = 0;
    List<int> num = [];
    for (var e in frequency.keys) {
      if (frequency[e]! >= max) {
        max = frequency[e]!;
      }
    }

    for (var e in frequency.keys) {
      if (max == frequency[e]) {
        num.add(e);
      }
    }
    int temp = 0;
    int ans = 0;
    for (var e in num) {
      int right = 0;
      for (var i = 0; i < nums.length; i++) {
        if (e == nums[i]) {
          right = i;
          break;
        }
      }
      int left = 0;
      for (var i = nums.length - 1; i >= 0; i--) {
        if (e == nums[i]) {
          left = i;
          break;
        }
      }

      if (ans == 0 || temp > left - right) {
        temp = left - right;
        ans = e;
      }
    }
    for (var i = 0; i < nums.length; i++) {
      if (nums[i] != ans) {
        nums.removeAt(i);
        i--;
      } else {
        break;
      }
    }
    for (var i = nums.length - 1; i >= 0; i--) {
      if (nums[i] != ans) {
        nums.removeAt(i);
      } else {
        break;
      }
    }
    return nums.length;
  }
}
