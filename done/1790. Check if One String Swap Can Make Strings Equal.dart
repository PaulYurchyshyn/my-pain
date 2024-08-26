class Solution {
  bool areAlmostEqual(String s1, String s2) {
    String _swapLetters(String s, int i, int j) {
      String temp = s.substring(j, j + 1);
      s = s.replaceRange(j, j + 1, s[i]);
      s = s.replaceRange(i, i + 1, temp);
      return s;
    }

    if (s1 == s2) return true;
    if (s1 != s2) {
      int temp = 0;
      for (var i = 0; i < s1.length; i++) {
        if (s1[i] != s2[i]) {
          for (var j = 0; j < s1.length; j++) {
            if (s2[i] == s1[j] && s2[j] != s1[j]) {
              temp = j;
              break;
            }
          }
          s1 = _swapLetters(s1, i, temp);
          break;
        }
      }

      if (s1 == s2) return true;
    }
    return false;
  }
}
