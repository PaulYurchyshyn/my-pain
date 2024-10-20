class Solution {
  int findContentChildren(List<int> g, List<int> s) {
    int ans = 0;
    Map<int, int> cg = {};
    Map<int, int> cs = {};
    for (var eg in g) {
      if (cg.containsKey(eg)) {
        cg[eg] = cg[eg]! + 1;
      } else {
        cg[eg] = 1;
      }
    }
    for (var es in s) {
      if (cs.containsKey(es)) {
        cs[es] = cs[es]! + 1;
      } else {
        cs[es] = 1;
      }
    }
    List<int> sortedCs = cs.keys.toList();
    sortedCs.sort();
    for (var cgKey in cg.keys) {
      for (var csKey in sortedCs) {
        if (csKey >= cgKey && cs[csKey]! > 0) {
          if (cs[csKey]! - cg[cgKey]! >= 0) {
            ans += cg[cgKey]!;
            cs[csKey] = cs[csKey]! - cg[cgKey]!;
            cg[cgKey] = 0;
            break;
          } else {
            ans += cs[csKey]!;
            cg[cgKey] = cg[cgKey]! - cs[csKey]!;
            cs[csKey] = 0;
          }
        }
      }
    }
    return ans;
  }
}
