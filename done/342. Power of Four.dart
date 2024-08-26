import 'dart:math';

class Solution {
  bool isPowerOfFour(int n) {
    if (n < 0) {
      return false;
    }
    for (var i = 0; i < 2147483647; i++) {
      if (pow(4, i) == n) {
        return true;
      }
      if (pow(4, i) > n) {
        return false;
      }
    }
    return false;
  }
}
