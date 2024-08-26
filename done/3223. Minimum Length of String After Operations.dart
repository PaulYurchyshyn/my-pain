class Solution {
  int minimumLength(String s) {
    Map<String, int> results = {};
    for (var e in s.split('')) {
      if (results.keys.contains(e)) {
        int? temp = results[e];
        results[e] = temp! + 1;
      } else {
        results[e] = 1;
      }
    }
    for (var e in results.keys) {
      int? temp = results[e];
      if (temp! % 2 == 0) {
        results[e] = 2;
      } else {
        results[e] = 1;
      }
    }
    int ans = 0;
    for (var e in results.values) {
      ans += e;
    }
    return ans;
  }
}
