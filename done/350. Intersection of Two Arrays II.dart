class Solution {
  List<int> intersectII(List<int> nums1, List<int> nums2) {
    List<int> result = [];
    for (var e in nums2) {
      if (nums1.contains(e)) {
        result.add(e);
        nums1.remove(e);
      }
    }
    return result;
  }
}
