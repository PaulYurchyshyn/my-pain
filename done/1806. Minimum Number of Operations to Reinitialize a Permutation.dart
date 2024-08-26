class Solution {
  int reinitializePermutation(int n) {
    List<int> perm = List.generate(n, (int index) => index);
    List<int> _changeArray(List<int> nums) {
      List<int> ans = [];
      for (var i = 0; i < nums.length; i++) {
        if (i % 2 == 0) {
          ans.add(nums[i ~/ 2]);
        } else {
          ans.add(nums[n ~/ 2 + (i - 1) ~/ 2]);
        }
      }
      return ans;
    }

    int ans = 1;
    List<int> arr = _changeArray(perm);
    while (arr.toString() != perm.toString()) {
      arr = _changeArray(arr);
      ans++;
    }
    return ans;
  }
}
