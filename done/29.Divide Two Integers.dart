import 'dart:math';

class Solution {
  int divide(int dividend, int divisor) {
    if (dividend ~/ divisor == pow(2, 31)) {
      return dividend ~/ divisor - 1;
    } else {
      return dividend ~/ divisor;
    }
  }
}
