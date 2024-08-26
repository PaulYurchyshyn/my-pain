class Solution {
  void reverseString(List<String> s) {
    List<String> temp = [];
    for (var i = s.length - 1; i >= 0; i--) {
      temp.add(s[i]);
    }
    s.replaceRange(0, s.length - 1, temp);
  }
}
