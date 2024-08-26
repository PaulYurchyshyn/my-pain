class Solution {
  List<int> findIntersectionValues(List<int> nums1, List<int> nums2) {
    int left = 0, right = 0;
    for (var i = 0; i < nums1.length; i++) {
      if (nums2.contains(nums1[i])) {
        left++;
      }
    }
    for (var i = 0; i < nums2.length; i++) {
      if (nums1.contains(nums2[i])) {
        right++;
      }
    }
    return [left, right];
  }
}
