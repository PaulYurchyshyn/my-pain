class Solution {
  int compress(List<String> chars) {
    List<String> result = [];
    String char = chars[0];
    int m = 0;
    for (var e in chars) {
      if (char == e) {
        m++;
      }
      if (char != e) {
        if (m == 1) {
          result.add(char);
          char = e;
          m = 1;
        } else {
          result.add(char);
          char = e;
          for (var r in m.toString().split('')) {
            result.add(r);
          }
          m = 1;
        }
      }
    }
    if (m == 1) {
      result.add(char);
    } else {
      result.add(char);
      for (var r in m.toString().split('')) {
        result.add(r);
      }
    }
    chars.clear;
    chars.insertAll(0, result);
    return result.length;
  }
}
