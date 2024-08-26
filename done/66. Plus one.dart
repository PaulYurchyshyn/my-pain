class Solution {
  List<int> plusOne(List<int> digits) {
    digits[digits.length - 1] += 1;
    for (var i = digits.length - 1; i > -1; i--) {
      if (digits[i] == 10 && i != 0) {
        digits[i] = 0;
        digits[i - 1] += 1;
      }
      if (i == 0 && digits[i] == 10) {
        digits[i] = 0;
        digits.insert(0, 1);
      }
    }
    return digits;
  }
}
