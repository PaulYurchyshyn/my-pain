class Solution {
  int canBeTypedWords(String text, String brokenLetters) {
    List<String> words = text.split(' ');
    int ans = 0;
    for (var word in words) {
      for (var i = 0; i < brokenLetters.length; i++) {
        if (word.contains(brokenLetters[i])) {
          ans++;
          break;
        }
      }
    }
    return ans;
  }
}
