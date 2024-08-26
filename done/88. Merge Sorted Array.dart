class Solution {
  void mergeII(List<int> nums1, int m, List<int> nums2, int n) {
    nums1.replaceRange(m, nums1.length, nums2);
    nums1.sort();
  }
}
