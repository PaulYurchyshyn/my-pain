class Solution {
  String clearDigits(String s) {
    List<String> ss = s.split('');
    for (var i = 0; i < ss.length; i++) {
      if (ss[i].codeUnits[0] >= 48 && ss[i].codeUnits[0] <= 57) {
        ss.removeRange(i - 1, i + 1);
        i -= 2;
      }
    }
    return ss.join('');
  }
}
