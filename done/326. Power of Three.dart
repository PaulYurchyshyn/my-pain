import 'dart:math';

class Solution {
  bool isPowerOfThree(int n) {
    if (n <= 0) {
      return false;
    }
    for (var i = 0; i < 51; i++) {
      if (n == pow(3, i)) return true;
      if (n < pow(3, i)) return false;
    }
    return false;
  }
}
