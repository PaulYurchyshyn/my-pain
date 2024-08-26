class Solution {
  bool canBeEqual(String s1, String s2) {
    String _swap(String s, int n) {
      String temp = s[n + 2];
      s = s.replaceRange(n + 2, n + 3, s[n]);
      s = s.replaceRange(n, n + 1, temp);
      return s;
    }

    if (s1[0] != s2[0]) {
      s1 = _swap(s1, 0);
    }
    if (s1[1] != s2[1]) {
      s1 = _swap(s1, 1);
    }
    if (s1 == s2) {
      return true;
    }
    return false;
  }
}
