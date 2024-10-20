class Solution {
  int findTheArrayConcVal(List<int> nums) {
    int ans = 0;
    while (nums.isNotEmpty) {
      String temp = '';
      if (nums.length != 1) {
        temp = nums.first.toString() + nums.last.toString();
        nums.removeAt(0);
        nums.removeLast();
        ans += int.parse(temp);
      } else {
        return ans + nums[0];
      }
    }
    return ans;
  }
}
