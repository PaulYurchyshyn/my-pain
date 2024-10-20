class Solution {
  int minNumber(List<int> nums1, List<int> nums2) {
    List<int> commonNums = nums1.toSet().intersection(nums2.toSet()).toList();
    commonNums.sort();
    if (commonNums.isNotEmpty) {
      return commonNums.first;
    }

    nums1.sort();
    nums2.sort();
    int num1 = nums1.first * 10 + nums2.first;
    int num2 = nums2.first * 10 + nums1.first;
    if (num1 > num2) {
      return num2;
    } else {
      return num1;
    }
  }
}
