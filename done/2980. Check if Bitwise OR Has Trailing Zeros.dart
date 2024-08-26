class Solution {
  bool hasTrailingZeros(List<int> nums) {
    bool lastBitZero(int num) {
      if (num % 2 == 0)
        return true;
      else
        return false;
    }

    int? firstNumber = null, secondNumber = null;
    for (var e in nums) {
      if (lastBitZero(e)) {
        if (firstNumber == null)
          firstNumber = e;
        else
          secondNumber = e;
      }
      if (firstNumber != null && secondNumber != null) return true;
    }
    return false;
  }
}
