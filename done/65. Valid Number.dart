class Solution {
  bool isNumber(String s) {
    try {
      if (s.contains('Infinity')) {
        return false;
      }
      num.parse(s);
    } catch (e) {
      print('Error: $e');
      return false;
    }
    return true;
  }
}
