class Solution {
  bool checkAlmostEquivalent(String w1, String w2) {
    int abs(int n) => n < 0 ? -n : n;
    Map<String, int> lw1 = {}, lw2 = {};
    for (var i = 0; i < w1.length; i++) {
      if (!lw2.containsKey(w1[i])) lw2[w1[i]] = 0;
      if (!lw1.containsKey(w2[i])) lw1[w2[i]] = 0;
      if (lw1.containsKey(w1[i])) {
        lw1[w1[i]] = lw1[w1[i]]! + 1;
      } else {
        lw1[w1[i]] = 1;
      }
      if (lw2.containsKey(w2[i])) {
        lw2[w2[i]] = lw2[w2[i]]! + 1;
      } else {
        lw2[w2[i]] = 1;
      }
    }
    for (var key in lw1.keys) {
      if (abs(lw1[key]! - lw2[key]!) > 3) return false;
    }
    return true;
  }
}
