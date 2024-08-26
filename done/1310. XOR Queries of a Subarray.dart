class Solution {
  List<int> xorQueries(List<int> arr, List<List<int>> queries) {
    List<int> ans = [];
    for (var e in queries) {
      int temp = 0;
      for (var i in arr.sublist(e[0], e[1] + 1)) {
        temp ^= i;
      }
      ans.add(temp);
    }
    return ans;
  }
}
