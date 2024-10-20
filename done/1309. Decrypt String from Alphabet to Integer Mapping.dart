class Solution {
  String freqAlphabets(String s) {
    String ans = '';
    for (var i = s.length - 1; i >= 0; i--) {
      if (s[i] == '#') {
        String temp = s.substring(i - 2, i);
        ans = String.fromCharCode(int.parse(temp) + 96) + ans;
        i -= 2;
      } else {
        ans = String.fromCharCode(int.parse(s[i]) + 96) + ans;
      }
    }

    return ans;
  }
}
