class Solution {
  bool canConstruct(String ransomNote, String magazine) {
    Map<String, int> _countLetters(String s) {
      Map<String, int> ans = {};
      for (var i = 0; i < s.length; i++) {
        String letter = s[i];
        if (!ans.keys.contains(letter)) {
          ans[letter] = 1;
          for (var j = i + 1; j < s.length; j++) {
            if (letter == s[j]) {
              int temp = ans[letter]!;
              temp++;
              ans[letter] = temp;
            }
          }
        }
      }
      return ans;
    }

    Map<String, int> mapRansomNote = _countLetters(ransomNote);
    Map<String, int> mapMagazine = _countLetters(magazine);

    for (var e in mapRansomNote.keys.toList()) {
      int temp1 = mapRansomNote[e] == null ? 0 : mapRansomNote[e]!;
      int temp2 = mapMagazine[e] == null ? 0 : mapMagazine[e]!;
      if (temp1 > temp2) {
        return false;
      }
    }
    return true;
  }
}
