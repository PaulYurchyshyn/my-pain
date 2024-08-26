class Solution {
  String convertToTitle(int columnNumber) {
    String result = '';
    while (columnNumber > 0) {
      result = String.fromCharCode(columnNumber % 27 + 64) + result;
      columnNumber = columnNumber ~/ 27;
    }
    return result;
  }
}
