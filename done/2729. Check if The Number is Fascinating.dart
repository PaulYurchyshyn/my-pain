class Solution {
  bool isFascinating(int n) {
    String r = n.toString() + (n * 2).toString() + (n * 3).toString();
    if (r.contains('0')) {
      return false;
    } else {
      for (var i = 1; i <= 9; i++) {
        if (!r.contains(i.toString())) {
          return false;
        }
      }
    }
    return true;
  }
}
