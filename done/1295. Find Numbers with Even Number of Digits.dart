class Solution {
  int findNumbers(List<int> nums) {
    int ans = 0;
    for (var num in nums) if (num.toString().length % 2 == 0) ans++;
    return ans;
  }
}
