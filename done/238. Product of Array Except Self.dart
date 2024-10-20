class Solution {
  List<int> productExceptSelf(List<int> nums) {
    int zeros = 0;
    int zeroPos = 0;
    if (nums.contains(0)) {
      for (var i = 0; i < nums.length; i++) {
        if (nums[i] == zeros) {
          zeros++;
          zeroPos = i;
        }
      }
    }
    List<int> ans = List.filled(nums.length, 0);
    if (zeros == 1) {
      int temp = 1;
      for (var j = 0; j < nums.length; j++) {
        if (j != zeroPos) {
          temp *= nums[j];
        }
      }
      ans[zeroPos] = temp;
      return ans;
    }

    if (zeros > 1) {
      return ans;
    }

    for (var i = 0; i < nums.length; i++) {
      int temp = 1;
      for (var j = 0; j < nums.length; j++) {
        int left = j;
        int right = nums.length - 1 - j;
        if (left > right) {
          break;
        }
        if (right != i && left < right) {
          temp *= nums[left];
        }
        if (right != i && left < right) {
          temp *= nums[right];
        }
      }
      ans[i] = temp;
    }
    return ans;
  }
}
