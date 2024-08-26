class Solution {
  int minimizedStringLength(String s) {
    return s.split('').toSet().length;
  }
}
