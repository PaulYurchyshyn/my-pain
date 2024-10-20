class Solution {
  int minimumSum(int n, int k) {
    int ans = 0;
    List<int> arr = [];
    for1:
    for (var i = 1; arr.length < n; i++) {
      for (var e in arr) {
        if (e + i == k) continue for1;
      }
      arr.add(i);
    }

    for (var e in arr) ans += e;

    return ans;
  }
}
