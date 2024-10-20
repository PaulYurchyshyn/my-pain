class Solution {
  int vowelStrings(List<String> words, int left, int right) {
    int ans = 0;
    List<String> vomels = ['a', 'e', 'i', 'o', 'u'];
    for (var i = left; i <= right; i++) {
      if (vomels.contains(words[i][0]) &&
          vomels.contains(words[i][words[i].length - 1])) {
        ans++;
      }
    }
    return ans;
  }
}
