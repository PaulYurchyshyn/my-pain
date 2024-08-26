class Solution {
  bool digitCount(String num) {
    for (var i = 0; i < num.length; i++) {
      int c = 0;
      for (var j = 0; j < num.length; j++) {
        if (i.toString() == num[j]) {
          c++;
        }
      }
      if (num[i] != c.toString()) {
        return false;
      }
    }
    return true;
  }
}
