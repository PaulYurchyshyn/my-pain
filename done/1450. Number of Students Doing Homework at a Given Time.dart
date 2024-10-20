class Solution {
  int busyStudent(List<int> startTime, List<int> endTime, int queryTime) {
    int ans = 0;
    for (var i = 0; i < startTime.length; i++) {
      if (startTime[i] <= queryTime && queryTime <= endTime[i]) ans++;
    }
    return ans;
  }
}
