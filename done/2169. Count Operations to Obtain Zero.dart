class Solution {
  int countOperations(int num1, int num2) {
    int ans = 0;
    while (num1 > 0 && num2 > 0) {
      ans++;
      if (num2 > num1) {
        num2 = num2 - num1;
      } else {
        num1 = num1 - num2;
      }
    }
    return ans;
  }
}
