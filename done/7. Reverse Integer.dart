class Solution {
  int reverse(int x) {
    String result = '';
    if (x < 0) {
      result += '-';
      x = -1 * x;
    }
    for (var i = x.toString().length - 1; i >= 0; i--) {
      result += x.toString()[i];
    }
    x = int.parse(result);
    if (x < -2147483648 || x > 2147483647) {
      return 0;
    } else {
      return x;
    }
  }
}
