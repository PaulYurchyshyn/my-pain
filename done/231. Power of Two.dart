import 'dart:math';

class Solution {
  bool isPowerOfTwo(int n) {
    if (n < 0) return false;
    int x = 0;
    while (pow(2, x) < n) {
      x++;
    }
    if (pow(2, x) == n) {
      return true;
    } else {
      return false;
    }
  }
}
