class Solution {
  int countPrefixes(List<String> words, String s) {
    List<String> prefixes = [];
    for (var i = 1; i <= s.length; i++) {
      String subString = s.substring(0, i);
      for (var j = words.length - 1; j >= 0; j--) {
        if (words[j] == subString) {
          prefixes.add(words[j]);
          words.removeAt(j);
        }
      }
    }
    return prefixes.length;
  }
}
