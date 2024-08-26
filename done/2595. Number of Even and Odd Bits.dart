class Solution {
  List<int> evenOddBit(int n) {
    String _decToInt(int n) {
      String ans = '';
      while (n > 0) {
        if (n % 2 == 0) {
          ans = ans + '0';
          n = n ~/ 2;
        } else {
          ans = ans + '1';
          n = n ~/ 2;
        }
      }
      return ans;
    }

    String binNum = _decToInt(n);
    List<int> ans = [0, 0];
    for (var i = binNum.length - 1; i >= 0; i--) {
      if (i % 2 == 0) {
        if (binNum[i] == '1') {
          ans[0]++;
        }
      } else {
        if (binNum[i] == '1') {
          ans[1]++;
        }
      }
    }

    return ans;
  }
}
