class Solution {
  List<int> numberOfPairs(List<int> nums) {
    Map<int, int> map = {};
    for (var e in nums) {
      if (map.containsKey(e)) {
        map[e] = map[e]! + 1;
      } else {
        map[e] = 1;
      }
    }
    List<int> ans = [0, 0];
    for (var key in map.keys) {
      if (map[key]! % 2 == 1) {
        ans[0] += map[key]! ~/ 2;
        ans[2] += 1;
      } else {
        ans[0] += map[key]! ~/ 2;
      }
    }
    return ans;
  }
}
