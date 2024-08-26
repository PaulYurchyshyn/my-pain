class Solution {
  String greatestLetter(String s) {
    int max = 0;
    String ans = '';
    for (var i = 0; i < s.length; i++) {
      if (s.contains(s[i].toUpperCase()) &&
          s.contains(s[i].toLowerCase()) &&
          s[i].toLowerCase().codeUnits[0] > max) {
        max = s[i].toLowerCase().codeUnits[0];
        ans = s[i].toUpperCase();
      }
    }
    return ans;
  }
}
