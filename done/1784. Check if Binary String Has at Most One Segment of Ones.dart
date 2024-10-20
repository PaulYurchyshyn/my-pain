class Solution {
  bool checkOnesSegment(String s) {
    bool segmentEnded = false;
    for (var i = 0; i < s.length; i++) {
      if (s[i] == '0') {
        segmentEnded = true;
      }
      if (segmentEnded && s[i] == '1') {
        return false;
      }
    }
    return true;
  }
}
