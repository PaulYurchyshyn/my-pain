class Solution {
  String reverseWordsIII(String s) {
    List<String> result = [];
    for (var e in s.split(' ')) {
      String word = '';
      for (var i = e.length - 1; i >= 0; i--) {
        word += e[i];
      }
      result.add(word);
    }
    return result.join(' ');
  }
}
