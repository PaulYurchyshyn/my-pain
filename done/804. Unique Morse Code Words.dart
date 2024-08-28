class Solution {
  int uniqueMorseRepresentations(List<String> words) {
    List<String> morzeCode = [
      ".-",
      "-...",
      "-.-.",
      "-..",
      ".",
      "..-.",
      "--.",
      "....",
      "..",
      ".---",
      "-.-",
      ".-..",
      "--",
      "-.",
      "---",
      ".--.",
      "--.-",
      ".-.",
      "...",
      "-",
      "..-",
      "...-",
      ".--",
      "-..-",
      "-.--",
      "--..",
    ];
    List<String> ans = [];
    for (var e in words) {
      String temp = '';
      for (var i = 0; i < e.length; i++) {
        temp += morzeCode[e[i].codeUnits[0] - 97];
      }
      ans.add(temp);
    }
    return ans.toSet().length;
  }
}
