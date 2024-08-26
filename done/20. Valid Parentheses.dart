class Solution {
  bool isValid(String s) {
    String _remove(String s, int n) {
      s = s.replaceRange(n + 1, n + 2, '');
      s = s.replaceRange(n, n + 1, '');
      return s;
    }

    for (var i = 0; i < s.length - 1; i++) {
      String subString = s.substring(i, i + 2);
      if (subString == '()' || subString == '[]' || subString == '{}') {
        s = _remove(s, i);
        i = -1;
      }
    }

    return s.isEmpty;
  }
}
