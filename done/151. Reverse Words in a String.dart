class Solution {
  String reverseWords(String s) {
    List<String> slist = [];
    String result = '';
    for (var e in s.split(' ')) {
      if (' ' != e && '' != e) {
        slist.add(e);
      }
    }
    for (var i = slist.length - 1; i >= 0; i--) {
      if (i == 0) {
        result += slist[i];
      } else {
        result += slist[i];
        result += ' ';
      }
    }
    return result;
  }
}
