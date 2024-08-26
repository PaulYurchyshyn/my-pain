class Solution {
  List<List<int>> mergeArrays(List<List<int>> nums1, List<List<int>> nums2) {
    int max_ID = 0;
    List<List<int>> result = [];
    if (nums1.last[0] > nums2.last[0]) {
      max_ID = nums1.last[0];
    } else {
      max_ID = nums2.last[0];
    }
    for (var i = 1; i <= max_ID; i++) {
      int sum = 0;
      for (var e in nums1) {
        if (i == e[0]) {
          sum += e[1];
        }
      }
      for (var e in nums2) {
        if (i == e[0]) {
          sum += e[1];
        }
      }
      if (sum != 0) {
        result.add([i, sum]);
      }
    }
    return result;
  }
}
