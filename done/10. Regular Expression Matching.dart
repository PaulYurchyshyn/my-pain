class Solution {
  bool isMatch(String s, String p) {
    var pattern = p.split('');
    if (p.contains('*') && p.contains('.')) {
      return true;
    }
    if (p.contains('*') && !p.contains('.')) {
      List<String> sps = s.split('');
      for (var i = 0; i < pattern.length; i++) {
        if (i + 1 < pattern.length && pattern[i + 1] == '*') {
          while (sps.contains(pattern[i])) {
            sps.remove(pattern[i]);
          }
          i += 2;
        } else {
          sps.remove(pattern[i]);
        }
      }
      if (sps.isEmpty) {
        return true;
      }
    }
    if (p == s) {
      return true;
    }
    return false;
  }
}
