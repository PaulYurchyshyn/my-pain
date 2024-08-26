class Solution {
  int getCommon(List<int> nums1, List<int> nums2) {
    if (nums1.last < nums2.first) {
      return -1;
    }
    for (var e in nums1) {
      if (nums2.contains(e)) {
        return e;
      }
    }
    return -1;
  }
}
