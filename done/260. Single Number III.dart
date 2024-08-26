class Solution {
  List<int> singleNumber(List<int> nums) {
    Map<int, int> mapNums = {};
    for (var e in nums) {
      if (mapNums.containsKey(e)) {
        mapNums[e] = 2;
      } else {
        mapNums[e] = 1;
      }
    }
    List<int> ans = [];
    for (var e in mapNums.keys) {
      if (mapNums[e] == 1) {
        ans.add(e);
      }
    }
    return ans;
  }
}
