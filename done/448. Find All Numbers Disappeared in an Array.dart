class Solution {
  List<int> findDisappearedNumbers(List<int> nums) {
    List<int> nums2 = List.generate(nums.length, (int i) => 1 + i);
    Set<int> ans = nums2.toSet().difference(nums.toSet());
    return ans.toList();
  }
}
