class Solution {
  bool canVisitAllRooms(List<List<int>> rooms) {
    List<List<bool>> ans = [];
    for (var i = 0; i < rooms.length; i++) {
      ans.add([false, false]);
    }
    ans[0][0] = true;
    for (var i = 0; i < rooms.length; i++) {
      if (ans[i][0] && !ans[i][1]) {
        ans[i][1] = true;
        for (var e in rooms[i]) {
          ans[e][0] = true;
        }
        i = -1;
      }
    }
    for (var e in ans) {
      if (e.contains(false)) {
        return false;
      }
    }
    return true;
  }
}
