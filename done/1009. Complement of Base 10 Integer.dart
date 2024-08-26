class Solution {
  int bitwiseComplement(int n) {
    if (n == 0) return 1;

    int _power(int i) {
      int result = 1;
      for (var j = 0; j < i; j++) {
        result *= 2;
      }
      return result;
    }

    String resultBinary = '';
    while (n > 0) {
      if (n % 2 == 0) resultBinary = '1' + resultBinary;
      if (n % 2 == 1) resultBinary = '0' + resultBinary;
      n = n ~/ 2;
    }
    int result = 0, j = 0;
    for (var i = resultBinary.length - 1; i >= 0; i--) {
      result += (int.parse(resultBinary[i]) * _power(j++));
    }
    return result;
  }
}
