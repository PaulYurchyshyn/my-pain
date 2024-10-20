class Solution {
  List<String> findAndReplacePattern(List<String> words, String pattern) {
    bool isPattern(String s1, String s2) {
      Map<String, String> map = {};
      for (var i = 0; i < s1.length; i++) {
        if (map.containsKey(s2[i]) || map.containsValue(s1[i])) {
          if (map[s2[i]] == s1[i]) {
            continue;
          }
          return false;
        } else {
          map[s2[i]] = s1[i];
        }
      }
      return true;
    }

    List<String> ans = [];
    for (var word in words) {
      if (isPattern(pattern, word)) {
        ans.add(word);
      }
    }
    return ans;
  }
}
