class Solution {
  int maxDistance(List<List<int>> arrays) {
    int max = arrays[0].last;
    late int maxPos;
    for (var i = 0; i < arrays.length; i++) {
      if (arrays[i].last >= max) {
        max = arrays[i].last;
        maxPos = i;
      }
    }
    int min = max;
    late int minPos;
    for (var i = 0; i < arrays.length; i++) {
      if (arrays[i].first <= min && maxPos != i) {
        min = arrays[i].first;
      }
    }
    int ans1 = max - min;
    for (var i = 0; i < arrays.length; i++) {
      if (arrays[i].first <= min) {
        min = arrays[i].first;
        minPos = i;
      }
    }
    max = min;
    for (var i = 0; i < arrays.length; i++) {
      if (arrays[i].last >= max && minPos != i) {
        max = arrays[i].last;
      }
    }
    int ans2 = max - min;
    return ans2 > ans1 ? ans2 : ans1;
  }
}
