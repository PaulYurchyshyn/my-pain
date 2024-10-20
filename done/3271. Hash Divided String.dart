class Solution {
  String stringHash(String s, int k) {
    String ans = '';
    while (s.isNotEmpty) {
      String tempString = s.substring(0, k);
      s = s.replaceRange(0, k, '');
      int temp = 0;
      for (var e in tempString.split('')) {
        temp += e.codeUnits[0] - 97;
      }
      temp = temp % 26 + 97;
      ans += String.fromCharCode(temp);
    }
    return ans;
  }
}
