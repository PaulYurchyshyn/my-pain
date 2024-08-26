class Solution {
  String reverseStr(String s, int k) {
    String _reverse(String s) {
      String ans = '';
      for (var i = s.length - 1; i >= 0; i--) {
        ans += s[i];
      }
      return ans;
    }

    String ans = '';
    bool turn = true;
    for (var i = 0; i < s.length; i++) {
      if (turn) {
        if (i + k < s.length) {
          ans += _reverse(s.substring(i, i + k));
          i = i + k - 1;
        } else {
          ans += _reverse(s.substring(i, s.length));
          break;
        }
      } else {
        if (i + k < s.length) {
          ans += s.substring(i, i + k);
          i = i + k - 1;
          k = 2 * k;
        } else {
          ans += s.substring(i, s.length);
          break;
        }
      }
      turn = !turn;
    }
    print(ans);
    return '';
  }
}
