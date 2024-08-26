class Solution {
  String removeOccurrences(String s, String part) {
    if (part.length > s.length) {
      return s;
    }
    if (part == s) {
      return '';
    }
    for (var i = 0; i <= s.length - part.length; i++) {
      String temp = s.substring(i, i + part.length);
      if (temp == part) {
        s = s.replaceRange(i, i + part.length, '');
        i = -1;
        continue;
      }
    }
    return s;
  }
}
