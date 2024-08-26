class Solution {
  List<int> nextGreaterElement(List<int> nums1, List<int> nums2) {
    List<int> result = [];
    for (var i = 0; i < nums1.length; i++) {
      bool pass = false;
      for (var j = 0; j < nums2.length; j++) {
        if (nums1[i] == nums2[j]) {
          pass = true;
        }
        if (pass && nums2[j] > nums1[i]) {
          result.add(nums2[j]);
          break;
        }
      }
      if (result.length != i + 1) {
        result.add(-1);
      }
    }
    return result;
  }
}
