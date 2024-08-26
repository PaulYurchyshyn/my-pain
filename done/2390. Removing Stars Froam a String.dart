class Solution {
  String removeStars(String s) {
    List<String> split_s = s.split('');
    List<String> result = [];
    if (!split_s.contains('*')) {
      return s;
    }
    for (var i = 0; i < split_s.length; i++) {
      if (split_s[i] != '*') {
        result.add(split_s[i]);
      } else {
        result.removeLast();
      }
    }
    return result.join();
  }
}
