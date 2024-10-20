class Solution {
  int percentageLetter(String s, String letter) {
    if (!s.contains(letter)) return 0;
    int ans = 0;
    for (var i = 0; i < s.length; i++) {
      if (s[i] == letter) ans++;
    }
    return ans * 100 ~/ s.length;
  }
}
