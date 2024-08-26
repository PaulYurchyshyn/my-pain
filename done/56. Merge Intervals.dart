class Solution {
  List<List<int>> merge(List<List<int>> intervals) {
    bool again = false;
    for (var i = 0; i < intervals.length - 1; i++) {
      for (var j = i + 1; j < intervals.length; j++) {
        if (intervals[i][0] <= intervals[j][0] &&
            intervals[i][1] >= intervals[j][1]) {
          intervals.removeAt(j);
          j--;
          again = true;
          continue;
        }
        if (intervals[j][0] <= intervals[i][0] &&
            intervals[j][1] >= intervals[i][1]) {
          intervals.removeAt(i);
          j--;
          again = true;
          continue;
        }
        if (intervals[i][0] <= intervals[j][0] &&
            intervals[i][1] >= intervals[j][0]) {
          intervals[i][1] = intervals[j][1];
          intervals.removeAt(j);
          j--;
          again = true;
          continue;
        }
        if (intervals[i][0] <= intervals[j][1] &&
            intervals[i][1] >= intervals[j][1]) {
          intervals[i][0] = intervals[j][0];
          intervals.removeAt(j);
          j--;
          again = true;
          continue;
        }
      }
      if (again) {
        i--;
        again = false;
      }
    }
    return intervals;
  }
}
