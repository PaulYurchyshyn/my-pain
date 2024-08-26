class Solution {
  String removeTrailingZeros(String num) {
    List<String> snum = num.split('');
    for (var i = snum.length - 1; i >= 0; i--) {
      if (snum[i] == '0') {
        snum.removeAt(i);
      } else {
        break;
      }
    }
    return snum.join('');
  }
}
