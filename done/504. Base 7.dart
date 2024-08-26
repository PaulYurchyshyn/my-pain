class Solution {
  String convertToBase7(int num) {
    String result = '';
    String mark = '';
    if (num < 0) {
      mark += '-';
      num *= -1;
    }
    while (num >= 7) {
      result += (num % 7).toString();
      num = num ~/ 7;
    }
    result += (num % 7).toString();
    result += mark;
    return result.split('').reversed.join('');
  }
}
