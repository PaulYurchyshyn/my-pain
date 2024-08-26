class Solution {
  int countBalls(int lowLimit, int highLimit) {
    int _sumNumbers(int num) {
      int ans = 0;
      while (num > 0) {
        ans += num % 10;
        num ~/= 10;
      }
      return ans;
    }

    Map<int, int> ans = {};
    for (var i = lowLimit; i <= highLimit; i++) {
      int temp = _sumNumbers(i);
      if (ans.containsKey(temp))
        ans[temp] = ans[temp]! + 1;
      else
        ans[temp] = 1;
    }
    int max = 0;
    for (var e in ans.values) {
      if (e > max) max = e;
    }
    return max;
  }
}
