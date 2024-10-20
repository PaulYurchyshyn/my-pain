class Solution {
  int divisorSubstrings(int num, int k) {
    int ans = 0;
    for (var i = 0; i <= num.toString().length - k; i++) {
      int temp = int.parse(num.toString().substring(i, i + k));
      if (temp != 0 && num % temp == 0) {
        ans++;
      }
    }
    return ans;
  }
}
