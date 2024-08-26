class Solution {
  bool checkRecord(String s) {
    int lates = 0;
    int absentDays = 0;
    for (var i = 0; i < s.length; i++) {
      String temp = s[i];
      switch (temp) {
        case 'A':
          absentDays++;
          lates = 0;
          break;
        case 'L':
          lates++;
          break;
        case 'P':
          lates = 0;
          break;
        default:
      }
      if (absentDays >= 2 || lates >= 3) {
        return false;
      }
    }
    return true;
  }
}
