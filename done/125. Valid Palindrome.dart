class Solution {
  bool isPalindrome(String s) {
    List<String> ss = [];
    for (var i = 0; i < s.length; i++) {
      if ((s[i].codeUnits[0] >= 97 && s[i].codeUnits[0] <= 122) ||
          (s[i].codeUnits[0] >= 65 && s[i].codeUnits[0] <= 90) ||
          (s[i].codeUnits[0] >= 48 && s[i].codeUnits[0] <= 57)) {
        ss.add(s[i].toLowerCase());
      }
    }
    print('${ss}');
    for (var i = 0; i < ss.length; i++) {
      print('${ss[i]} and ${ss[ss.length - 1 - i]}');
      if (ss[i] != ss[ss.length - 1 - i]) {
        return false;
      }
    }
    return true;
  }
}
