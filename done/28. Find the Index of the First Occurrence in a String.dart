class Solution {
  int strStr(String haystack, String needle) {
    if (haystack == needle) {
      return 0;
    }
    if (haystack.contains(needle)) {
      for (var i = 0; i <= haystack.length - needle.length; i++) {
        String temp = haystack.substring(i, i + needle.length);
        if (temp == needle) {
          return i;
        }
      }
    }
    return -1;
  }
}
