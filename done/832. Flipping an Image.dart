class Solution {
  List<List<int>> flipAndInvertImage(List<List<int>> image) {
    List<List<int>> ans = [];
    for (var e in image) {
      ans.add(List.from(e.reversed));
    }
    for (var e in ans) {
      for (var i = 0; i < e.length; i++) {
        e[i] = e[i] == 1 ? 0 : 1;
      }
    }
    return ans;
  }
}
