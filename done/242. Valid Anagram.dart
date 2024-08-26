class Solution {
  bool isAnagram(String s, String t) {
    int ct, cs;
    String tcode = '';
    String scode = '';
    for (var i = 'a'.codeUnitAt(0); i <= 'z'.codeUnitAt(0); i++) {
      cs = 0;
      ct = 0;
      for (var j in s.split('')) {
        if (String.fromCharCode(i) == j.toString()) {
          cs++;
        }
      }
      scode += cs.toString();
      for (var j in t.split('')) {
        if (String.fromCharCode(i) == j.toString()) {
          ct++;
        }
      }
      tcode += ct.toString();
    }
    if (tcode == scode) {
      return true;
    } else {
      return false;
    }
  }
}
