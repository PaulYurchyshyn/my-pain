class Solution {
  int search(List<int> nums, int target) {
    int left = 0;
    int right = nums.length - 1;
    while (left <= right) {
      int mid = (left + right) ~/ 2;
      if (nums[mid] == target) {
        return mid;
      }
      if (target > nums[mid]) {
        left += 1;
      } else {
        right -= 1;
      }
    }
    return -1;
  }
}
