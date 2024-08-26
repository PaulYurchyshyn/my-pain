class Solution {
  bool isPalindromeII(int x) {
    int j = 0;
    for (var i in x.toString().split('').reversed) {
      if (i != x.toString().split('')[j++]) {
        return false;
      }
    }
    return true;
  }
}
