class Solution {
  int maxDivScore(List<int> nums, List<int> divisors) {
    Map<int, int> ans = {};
    for (var d in divisors.toSet()) {
      for (var e in nums) {
        if (e % d == 0) {
          if (ans.containsKey(d)) {
            ans[d] = ans[d]! + 1;
          } else {
            ans[d] = 1;
          }
        }
      }
    }
    int max = 0;
    List<int> list = [];
    for (var e in ans.keys) {
      if (ans[e]! > max) {
        max = ans[e]!;
        list.clear();
      }
      if (ans[e] == max) {
        list.add(e);
      }
    }
    list.sort();
    if (list.isEmpty) {
      divisors.sort();
      return divisors[0];
    } else {
      return list[0];
    }
  }
}
