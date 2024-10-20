class Solution {
  int isPrefixOfWord(String sentence, String searchWord) {
    if (!sentence.contains(searchWord)) {
      return -1;
    } else {
      List<String> words = sentence.split(' ');
      for (var i = 0; i < words.length; i++) {
        if (words[i].contains(searchWord)) {
          String temp = words[i].substring(0, searchWord.length);
          if (temp == searchWord) {
            return i + 1;
          }
        }
      }
      return -1;
    }
  }
}
