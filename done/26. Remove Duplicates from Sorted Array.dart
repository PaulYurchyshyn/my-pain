class Solution {
  int removeDuplicates(List<int> nums) {
    List<int> result = [];
    int j = 0;
    for (var i = 0; i < nums.length; i++) {
      if (!result.contains(nums[i])) {
        result.add(nums[i]);
        nums[j] = nums[i];
        j++;
      }
    }
    print(nums);
    return result.length;
  }
}
