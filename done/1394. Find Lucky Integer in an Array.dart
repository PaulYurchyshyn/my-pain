class Solution {
  int findLucky(List<int> arr) {
    Map<int, int> ans = {};
    for (var i = arr.length - 1; i >= 0; i--) {
      if (ans.containsKey(arr[i])) {
        ans[arr[i]] = ans[arr[i]]! + 1;
      } else {
        ans[arr[i]] = 1;
      }
    }
    List<int> keys = [];
    for (var e in ans.keys) {
      keys.add(e);
    }
    keys.sort();
    for (var e in keys.reversed) {
      if (e == ans[e]) {
        return e;
      }
    }
    return -1;
  }
}
