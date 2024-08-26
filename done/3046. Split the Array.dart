class Solution {
  bool isPossibleToSplit(List<int> nums) {
    List<int> nums1 = [], nums2 = [];
    nums.sort();
    for (var i = 0; i < nums.length; i++) {
      if (!nums1.contains(nums[i]) && nums1.length <= nums2.length) {
        nums1.add(nums[i]);
      } else if (!nums2.contains(nums[i]) && nums1.length > nums2.length) {
        nums2.add(nums[i]);
      } else {
        return false;
      }
    }
    return true;
  }
}
