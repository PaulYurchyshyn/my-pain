class Solution {
  int lengthOfLongestSubstring(String s) {
    Map<String, int> rs = {};
    int left = 0;
    int result = 0;
    for (var right = 0; right < s.length; right++) {
      if (rs.keys.contains(s[right])) {
        rs[s[right]] = rs[s[right]]! + 1;
      } else {
        rs[s[right]] = 1;
      }
      while (rs.values.contains(2)) {
        rs[s[left]] = rs[s[left]]! - 1;
        left++;
      }
      if (result < right - left + 1) {
        result = right - left + 1;
      }
    }
    return result;
  }
}
