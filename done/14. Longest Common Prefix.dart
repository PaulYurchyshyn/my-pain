class Solution {
  String longestCommonPrefix(List<String> strs) {
    String prefix = '';
    int j = 0;
    for (var letter in strs[0].split('')) {
      for (var word in strs) {
        if (j > word.length - 1 || letter != word.split('')[j]) {
          return prefix;
        }
      }
      prefix += letter;
      j++;
    }
    return prefix;
  }
}
