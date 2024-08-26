class Solution {
  int hammingWeight(int n) {
    int rn = n;
    String binNum = '';
    while (rn > 0) {
      if (rn % 2 == 1) {
        binNum = '1' + binNum;
      } else {
        binNum = '2' + binNum;
      }
      rn = rn ~/ 2;
    }
    int y = 0;
    for (var i = 0; i < binNum.length; i++) {
      if (binNum[i] == '1') {
        y += 1;
      }
    }
    return y;
  }
}
