class Solution {
  int scoreOfString(String s) {
    int result = 0;
    for (var i = 0; i < s.length - 1; i++) {
      int temp = s[i].codeUnits[0] - s[i + 1].codeUnits[0];
      if (temp < 0) temp *= -1;
      result += temp;
    }
    return result;
  }
}
