class Solution {
  int alternateDigitSum(int n) {
    int sn = 0, i = 0;
    for (var e in n.toString().split('')) {
      if (i == 0) {
        i = 1;
        sn += int.parse(e);
      } else {
        i = 0;
        sn -= int.parse(e);
      }
    }
    return sn;
  }
}
