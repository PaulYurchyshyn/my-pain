class Solution {
  List<int> diStringMatch(String s) {
    List<int> swap(List<int> nums, int i) {
      int temp = nums.last;
      nums.insert(i, temp);
      nums.removeLast();
      return nums;
    }

    List<int> nums = List.generate(s.length + 1, (int index) => index++);
    for (var i = 0; i < s.length; i++) {
      if (s[i] == 'D' && nums[i] < nums[i + 1]) {
        nums = swap(nums, i);
      }
    }

    return nums;
  }
}
