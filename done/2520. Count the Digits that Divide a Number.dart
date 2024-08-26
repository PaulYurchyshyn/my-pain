class Solution {
  int countDigits(int num) {
    int result = 0;
    for (var e in num.toString().split('')) {
      if (num % int.parse(e) == 0) {
        result++;
      }
    }
    return result;
  }
}
