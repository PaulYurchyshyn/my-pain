class Solution {
  int numUniqueEmails(List<String> emails) {
    String _removeAfterPlus(String s) {
      int temp = 0;
      for (var i = 0; i < s.length; i++) {
        if (s[i] == '+') {
          temp = i;
          break;
        }
      }
      s = s.replaceRange(temp, s.length, '');
      return s;
    }

    String _removeDots(String s) {
      for (var i = 0; i < s.length; i++) {
        if (s[i] == '.') {
          s = s.replaceRange(i, i + 1, '');
          i--;
        }
      }
      return s;
    }

    Set<String> ans = {};
    for (var e in emails) {
      List<String> temp = e.split('@');
      if (temp[0].contains('+')) {
        temp[0] = _removeAfterPlus(temp[0]);
      }
      if (temp[0].contains('.')) {
        temp[0] = _removeDots(temp[0]);
      }
      ans.add(temp.join('@'));
    }
    return ans.length;
  }
}
