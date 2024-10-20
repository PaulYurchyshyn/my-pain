class Solution {
  int getLucky(String s, int k) {
    String numberString = '';
    for (var i = 0; i < s.length; i++) {
      numberString += (s[i].codeUnits[0] - 96).toString();
    }
    int i = 0;
    while (i < k) {
      int temp = 0;
      for (var i = 0; i < numberString.length; i++) {
        temp += int.parse(numberString[i]);
      }
      numberString = temp.toString();
      i++;
    }
    return int.parse(numberString);
  }
}
