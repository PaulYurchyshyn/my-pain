class Solution {
  bool wordPattern(String pattern, String s) {
    List<String> words = s.split(' ');

    if (pattern.length != words.length) return false;

    Map<String, String> map = {};
    for (var i = 0; i < pattern.length; i++) {
      if (map.keys.contains(pattern[i])) {
        if (map[pattern[i]]! != words[i]) {
          return false;
        } else {
          continue;
        }
      }
      if (!map.values.contains(words[i])) {
        map[pattern[i]] = words[i];
      } else {
        return false;
      }
    }

    return true;
  }
}
