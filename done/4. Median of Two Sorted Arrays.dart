class Solution {
  double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
    List<int> nums = [];
    nums.addAll(nums1);
    nums.addAll(nums2);
    nums.sort();
    if (nums.length % 2 == 1) {
      print(nums.length ~/ 2);
      double result = nums[((nums.length ~/ 2))].toDouble();
      return result;
    } else {
      double result =
          (nums[((nums.length ~/ 2) - 1)] + nums[((nums.length ~/ 2))]) / 2;
      return result;
    }
  }
}
