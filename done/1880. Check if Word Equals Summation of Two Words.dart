class Solution {
  bool isSumEqual(String firstWord, String secondWord, String targetWord) {
    int wordToNum(String s) {
      String ans = '';
      for (var i = 0; i < s.length; i++) {
        ans += (s[i].codeUnits[0] - 97).toString();
      }
      return int.parse(ans);
    }

    return wordToNum(firstWord) + wordToNum(secondWord) ==
        wordToNum(targetWord);
  }
}
