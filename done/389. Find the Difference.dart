class Solution {
  String findTheDifference(String s, String t) {
    var result = t.split('');
    for (var i = 0; i < s.split('').length; i++) {
      result.remove(s.split('')[i]);
    }
    return result[0];
  }
}
