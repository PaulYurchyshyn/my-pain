class Solution {
  String removeDigit(String number, String digit) {
    int temp = -1;
    for (var i = 0; i < number.length; i++) {
      if (number[i] == digit) {
        temp = i;
        if (i + 1 < number.length &&
            number[i].codeUnits[0] < number[i + 1].codeUnits[0]) {
          break;
        }
      }
    }
    return number.substring(0, temp) +
        number.substring(temp + 1, number.length);
  }
}

/*
    String finalAns = '';
    for (var i = number.length - 1; i >= 0; i--) {
      if (number[i] == digit &&
          number[i].codeUnits[0] <= number[i + 1].codeUnits[0]) {
        for (var j = 0; j < number.length; j++) {
          if (i != j) {
            finalAns += number[j];
          }
        }
        break;
      }
    }
    return finalAns;
*/