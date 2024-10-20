class Solution {
  int prefixCount(List<String> words, String pref) {
    int ans = 0;
    for (var word in words) {
      if (word.length >= pref.length &&
          word.substring(0, pref.length) == pref) {
        ans++;
      }
    }
    return ans;
  }
}
