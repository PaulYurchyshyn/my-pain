import 'dart:math';

class Solution {
  int arrangeCoins(int n) {
    return (sqrt(2) * sqrt(n + 0.125) - 0.5).floor();
  }
}
