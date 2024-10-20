class Solution {
  int daysBetweenDates(String date1, String date2) {
    int ans = DateTime.parse(date1).difference(DateTime.parse(date2)).inDays;
    return ans > 0 ? ans : -ans;
  }
}
