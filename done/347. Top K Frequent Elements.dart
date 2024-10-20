class Solution {
  List<int> topKFrequent(List<int> nums, int k) {
    Map<int, int> res = {};
    for (var n in nums) {
      res[n] = res.containsKey(n) ? res[n]! + 1 : 1;
    }
    int i = 0;
    List<int> ans = [];
    res = Map.fromEntries(
        res.entries.toList()..sort((e1, e2) => e2.value.compareTo(e1.value)));
    for (var key in res.keys) {
      if (i >= k) break;
      ans.add(key);
      i++;
    }
    return ans;
  }
}
