class Solution {
  int numberOfSpecialChars(String word) {
    List<String> special = [];
    List<String> notSpecial = [];
    if (word == word.toLowerCase() || word == word.toUpperCase()) return 0;
    for (var i = 0; i < word.length; i++) {
      String letter = word[i];
      if (letter == letter.toUpperCase() ||
          notSpecial.contains(letter) ||
          special.contains(letter))
        continue;
      else {
        bool upperLetterFound = false;
        bool lowerLetterFoundAfterUpper = false;
        String upperLetter = letter.toUpperCase();
        for (var j = 0; j < word.length; j++) {
          if (word[j] == upperLetter && !upperLetterFound) {
            upperLetterFound = true;
          }
          if (upperLetterFound && word[j] == letter) {
            lowerLetterFoundAfterUpper = true;
          }
          if (lowerLetterFoundAfterUpper) {
            break;
          }
        }
        if (!lowerLetterFoundAfterUpper &&
            upperLetterFound &&
            !special.contains(letter) &&
            !notSpecial.contains(letter)) {
          special.add(letter);
        } else {
          notSpecial.add(letter);
        }
      }
    }
    return special.length;
  }
}
