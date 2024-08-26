class Solution {
  bool isAcronym(List<String> words, String s) {
    if (s.length != words.length) {
      return false;
    }
    for (var i = 0; i < words.length; i++) {
      List<String> tmp = words[i].split('');
      if (tmp[0] != s[i]) {
        return false;
      }
    }
    return true;
  }
}
