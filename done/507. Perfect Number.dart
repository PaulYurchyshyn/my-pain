class Solution {
  bool checkPerfectNumber(int num) {
    int result = 0;
    for (var i = 1; i <= num; i++) {
      if (num % i == 0) {
        result += i;
        if (result == 2 * num) return true;
        if (num < result) return false;
      }
    }
    return false;
  }
}
