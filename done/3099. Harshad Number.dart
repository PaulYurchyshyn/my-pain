class Solution {
  int sumOfTheDigitsOfHarshadNumber(int x) {
    int sumD = 0;
    for (var e in x.toString().split('')) {
      sumD += int.parse(e);
    }
    if (x % sumD == 0) {
      return sumD;
    } else {
      return -1;
    }
  }
}
