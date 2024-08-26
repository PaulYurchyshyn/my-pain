class Solution {
  //time
  int countDays(int days, List<List<int>> meetings) {
    bool again = false;
    for (var i = 0; i < meetings.length - 1; i++) {
      for (var j = i + 1; j < meetings.length; j++) {
        if (meetings[i][0] <= meetings[j][0] &&
            meetings[i][1] >= meetings[j][1]) {
          meetings.removeAt(j);
          j--;
          again = true;
          continue;
        }
        if (meetings[j][0] <= meetings[i][0] &&
            meetings[j][1] >= meetings[i][1]) {
          meetings.removeAt(i);
          j--;
          again = true;
          continue;
        }
        if (meetings[i][0] <= meetings[j][0] &&
            meetings[i][1] >= meetings[j][0]) {
          meetings[i][1] = meetings[j][1];
          meetings.removeAt(j);
          j--;
          again = true;
          continue;
        }
        if (meetings[i][0] <= meetings[j][1] &&
            meetings[i][1] >= meetings[j][1]) {
          meetings[i][0] = meetings[j][0];
          meetings.removeAt(j);
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
    print(meetings);
    for (var e in meetings) {
      days -= (e[1] - e[0] + 1);
    }
    return days;
  }
}
