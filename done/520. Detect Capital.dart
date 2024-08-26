class Solution {
  bool detectCapitalUse(String word) {
    List<int> check = [0, 0];
    List<String> splitedword = word.split('');
    for (var v = 0; v < splitedword.length; v++) {
      for (var i = 'a'.codeUnits[0]; i <= 'z'.codeUnits[0]; i++) {
        if (splitedword[v].codeUnits[0] == i) {
          check[1]++;
        }
      }
      for (var i = 'A'.codeUnits[0]; i <= 'Z'.codeUnits[0]; i++) {
        if (splitedword[v].codeUnits[0] == i) {
          check[0]++;
        }
      }
    }
    if (check[1] == splitedword.length ||
        check[0] == splitedword.length ||
        (check[1] == splitedword.length - 1 &&
            check[0] == 1 &&
            (splitedword[0].codeUnits[0] >= 'A'.codeUnits[0] &&
                splitedword[0].codeUnits[0] <= 'Z'.codeUnits[0]))) {
      return true;
    } else {
      return false;
    }
  }
}
