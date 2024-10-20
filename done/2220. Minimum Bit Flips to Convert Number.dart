class Solution {
  int minBitFlips(int start, int goal) {
    String decToBin(int n) {
      String ans = '';
      while (n > 0) {
        if (n % 2 == 0) {
          ans = '0' + ans;
        } else {
          ans = '1' + ans;
        }
        n ~/= 2;
      }
      return ans;
    }

    if (start == goal) return 0;
    String s1 = decToBin(start);
    String s2 = decToBin(goal);
    int ans = 0;
    while (s1.length != s2.length) {
      if (s1.length > s2.length) {
        s2 = '0' + s2;
      } else {
        s1 = '0' + s1;
      }
    }
    for (var i = 0; i < s2.length; i++) {
      if (s1[i] != s2[i]) {
        ans++;
      }
    }
    return ans;
  }
}
