class Solution {
  bool isSubsequence(String s, String t) {
    List<String> lists = s.split(''), listt = t.split('');
    int count = 0;
    for (var i = 0; i < listt.length; i++) {
      if (lists[count] == listt[i]) {
        count++;
      }
    }
    if (count == lists.length) {
      return true;
    } else {
      return false;
    }
  }
}
