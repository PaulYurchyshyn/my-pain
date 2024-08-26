class Solution {
  String addBinary(String a, String b) {
    String result = '';
    bool nextOne = false;
    if (a.length > b.length) {
      for (var i = b.length; i < a.length; i++) {
        b = '0' + b;
      }
    } else {
      for (var i = a.length; i < b.length; i++) {
        a = '0' + a;
      }
    }
    for (var i = a.length - 1; i >= 0; i--) {
      if (a[i] == '1' && b[i] == '1') {
        if (nextOne) {
          result = '1' + result;
          nextOne = true;
        } else {
          result = '0' + result;
          nextOne = true;
        }
        continue;
      }
      if (a[i] == '1' || b[i] == '1') {
        if (nextOne) {
          result = '0' + result;
          nextOne = true;
        } else {
          result = '1' + result;
        }
        continue;
      }
      if (a[i] == '0' && b[i] == '0') {
        if (nextOne) {
          result = '1' + result;
          nextOne = false;
        } else {
          result = '0' + result;
        }
        continue;
      }
    }
    if (nextOne) {
      result = '1' + result;
    }
    return result;
  }
}
