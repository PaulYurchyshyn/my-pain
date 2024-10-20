class Solution {
  int dayOfYear(String date) {
    String beginYear = date.substring(0, 4) + '-01-00';
    Duration ans = DateTime.parse(date).difference(DateTime.parse(beginYear));
    return ans.inDays + 1;
  }
}
