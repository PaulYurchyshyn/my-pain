class Solution {
  bool isCovered(List<List<int>> ranges, int left, int right) {
    Set<int> range = {};
    Set<int> leftRight = {};
    for (var r in ranges) {
      for (var i = r[0]; i <= r[1]; i++) {
        range.add(i);
      }
    }
    for (var i = left; i <= right; i++) {
      leftRight.add(i);
    }
    Set<int> res = leftRight.intersection(range);
    return res.length == leftRight.length;
  }
}
