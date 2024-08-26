class Solution {
  String compressedString(String word) {
    String ans = '';
    String letter = word[0];
    int n = 0;
    for (var i = 0; i < word.length; i++) {
      if (letter == word[i] && n < 9) {
        n++;
      } else {
        ans += '$n' + letter;
        n = 1;
        letter = word[i];
      }
    }

    return ans += '$n' + letter;
  }
}
