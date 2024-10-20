class Solution {
  int minimumDifference(List<int> nums, int k) {
    if (k == 1) return 0;
    nums.sort();
    int ans = nums.last;
    for (var i = 0; i <= nums.length - k; i++) {
      List<int> temp = nums.sublist(i, i + k);
      int tempAns = temp.last - temp.first;
      if (tempAns < ans) {
        ans = tempAns;
      }
    }
    return ans;
  }
}
