class Solution {
  List<int> countBits(int n) {
    List<int> result = [];
    for (var i = 0; i <= n; i++) {
      int n = i;
      int t_res = 0;
      while (n > 0) {
        t_res += n % 2;
        if (n % 2 == 1) {
          n = (n - 1) ~/ 2;
        } else {
          n ~/= 2;
        }
      }
      result.add(t_res);
    }
    return result;
  }
}
