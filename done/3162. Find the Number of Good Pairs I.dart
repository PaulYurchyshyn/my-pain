class Solution {
  int numberOfPairs(List<int> nums1, List<int> nums2, int k) {
    int i = 0;
    for (var m = 0; m < nums2.length; m++) {
      for (var n = 0; n < nums1.length; n++) {
        if (nums1[n] % (nums2[m] * k) == 0) {
          i++;
        }
      }
    }
    return i;
  }
}
