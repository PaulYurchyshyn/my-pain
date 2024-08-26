class Solution {
  int sumOfMultiples(int n) {
    int sum = 0;
    for (var i = 0; i <= n; i++) {
      if (i % 3 == 0) {
        sum += i;
      } else if (i % 5 == 0) {
        sum += i;
      } else if (i % 7 == 0) {
        sum += i;
      }
    }
    return sum;
  }
}
