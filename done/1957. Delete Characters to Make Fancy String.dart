class Solution {
  String makeFancyString(String s) {
    String ans = '';
    String temp = s[0];
    int count = 1;
    for (var i = 1; i < s.length; i++) {
      if (temp != s[i]) {
        if (count >= 2) {
          ans += temp + temp;
        } else {
          ans += temp;
        }
        temp = s[i];
        count = 1;
      } else {
        count++;
      }
    }
    if (count >= 2) {
      ans += temp + temp;
    } else {
      ans += temp;
    }
    return ans;
  }
}
