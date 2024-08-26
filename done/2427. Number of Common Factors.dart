class Solution {
  int commonFactors(int a, int b) {
    int result = 0;
    for (var i = 1; i <= b; i++) {
      if (a % i == 0 && b % i == 0) {
        result = i;
      }
      if (i > a || i > b) {
        return result;
      }
    }
    return result;
  }
}
