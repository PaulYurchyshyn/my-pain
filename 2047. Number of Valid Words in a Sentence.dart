class Solution {
  int countValidWords(String sentence) {
    bool _containsDigit(String word) {
      List<String> numbers = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
      for (var i = 0; i < word.length; i++) {
        if (numbers.contains(word[i])) return false;
      }
      return true;
    }

    bool _containsLessThanTwoMarks(String word) {
      List<String> marks = ['!', ',', '.'];
      for (var i = 0; i < word.length; i++) {
        if (marks.contains(word[i]) && i != word.length - 1) {
          return false;
        }
      }
      return true;
    }

    bool _hypen(String word) {
      if (word[0] == '-' || word[word.length - 1] == '-') {
        return false;
      } else {
        for (var i = 1; i < word.length - 1; i++) {
          if (word[i] == '-' &&
              !((word[i - 1].codeUnits[0] >= 97 &&
                      word[i - 1].codeUnits[0] <= 122) &&
                  (word[i + 1].codeUnits[0] >= 97 &&
                      word[i + 1].codeUnits[0] <= 122))) {
            return false;
          }
        }
        return true;
      }
    }

    //"j-ppy"
    List<String> words = sentence.split(' ');
    int ans = 0;
    for (var word in words) {
      word.trim();
      if (word.isEmpty) {
        continue;
      }
      if (_containsDigit(word) &&
          _containsLessThanTwoMarks(word) &&
          _hypen(word)) {
        ans++;
      }
    }
    return ans;
  }
}
