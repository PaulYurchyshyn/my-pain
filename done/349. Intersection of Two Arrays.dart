class Solution {
  List<int> intersection(List<int> nums1, List<int> nums2) {
    List<int> result = [];
    for (var e in nums1.toSet()) {
      if (nums2.contains(e)) {
        result.add(e);
      }
    }
    return result;
  }
}
