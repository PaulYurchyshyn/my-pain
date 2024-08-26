class Solution {
  bool haveConflict(List<String> event1, List<String> event2) {
    List<int> e1 = [], e2 = [];
    for (var i = 0; i < event1.length; i++) {
      String t1 = '', t2 = '';
      for (var j = 0; j < event1[i].length; j++) {
        if (event1[i][j] != ':') {
          t1 += event1[i][j];
          t2 += event2[i][j];
        }
      }
      e1.add(int.parse(t1));
      e2.add(int.parse(t2));
    }
    if ((e1[1] >= e2[0] && e2[0] >= e1[0]) ||
        (e1[1] >= e2[1] && e2[1] >= e1[0])) {
      return true;
    }
    if ((e2[1] >= e1[0] && e1[0] >= e2[0]) ||
        (e2[1] >= e1[1] && e1[1] >= e2[0])) {
      return true;
    }
    return false;
  }
}
