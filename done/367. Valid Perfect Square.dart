class Solution {
  bool isPerfectSquare(int num) {
    int i = 1;
    while (i * i <= num) {
      if (i * i == num) {
        return true;
      }
      i++;
    }
    return false;
  }
}
