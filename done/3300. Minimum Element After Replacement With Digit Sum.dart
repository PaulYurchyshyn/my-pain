class Solution {
  int minElement(List<int> nums) {
    int _addDigits(String num) {
      int ans = 0;
      for (var i = 0; i < num.length; i++) ans += int.parse(num[i]);
      return ans;
    }

    int ans = nums[0];
    for (var e in nums) {
      int temp = _addDigits(e.toString());
      if (ans > temp) ans = temp;
    }
    return ans;
  }
}
