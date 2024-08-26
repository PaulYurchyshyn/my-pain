class Solution {
  int numberOfSpecialChars(String word) {
    int c = 0;
    Set<String> sword = word.split('').toSet();
    for (var e in sword) {
      if (e.codeUnitAt(0) >= 97 && sword.contains(e.toUpperCase())) {
        c++;
      }
    }
    return c;
  }
}
