class Solution {
  void rotate(List<int> nums, int k) {
    k = k % nums.length;
    List<int> temp = nums.sublist(nums.length - k);
    nums.removeRange(nums.length - k, nums.length);
    nums.insertAll(0, temp);
  }
}
