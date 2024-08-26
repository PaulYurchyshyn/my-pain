class Solution {
  String addStrings(String num1, String num2) {
    List<String> ln2 = [];
    List<String> ln1 = [];
    String sum = '';
    for (var i = num1.length - 1; i >= 0; i--) {
      ln1.add(num1[i]);
    }
    for (var i = num2.length - 1; i >= 0; i--) {
      ln2.add(num2[i]);
    }
    int size = 0;
    if (ln1.length >= ln2.length) {
      size = ln2.length;
    } else {
      size = ln1.length;
    }
    bool nextPlusOne = false;
    for (var i = 0; i < size; i++) {
      int ts = 0;
      if (nextPlusOne) {
        ts = int.parse(ln1[i]) + int.parse(ln2[i]) + 1;
        nextPlusOne = false;
      } else {
        ts = int.parse(ln1[i]) + int.parse(ln2[i]);
      }
      if (ts >= 10) {
        ts = ts % 10;
        nextPlusOne = true;
      }
      sum = ts.toString() + sum;
    }
    bool N1OrN2 = false;
    if (ln1.length >= ln2.length) {
      N1OrN2 = true;
    }
    if (N1OrN2) {
      int ts = 0;
      for (var i = size; i < ln1.length; i++) {
        if (nextPlusOne) {
          ts = int.parse(ln1[i]) + 1;
          nextPlusOne = false;
        } else {
          ts = int.parse(ln1[i]);
        }
        if (ts >= 10) {
          ts = ts % 10;
          nextPlusOne = true;
        }
        sum = ts.toString() + sum;
      }
    } else {
      int ts = 0;
      for (var i = size; i < ln2.length; i++) {
        if (nextPlusOne) {
          ts = int.parse(ln2[i]) + 1;
          nextPlusOne = false;
        } else {
          ts = int.parse(ln2[i]);
        }
        if (ts >= 10) {
          ts = ts % 10;
          nextPlusOne = true;
        }
        sum = ts.toString() + sum;
      }
    }
    if (nextPlusOne) {
      sum = '1' + sum;
    }
    return sum;
  }
}
