class Solution {
  bool isCircularSentence(String sentence) {
    List<String> lstWords = sentence.split(' ');
    for (var i = 0; i < lstWords.length; i++) {
      if (i == lstWords.length - 1) {
        if (lstWords[i].split('').last != lstWords[0].split('').first) {
          return false;
        }
      } else {
        if (lstWords[i].split('').last != lstWords[i + 1].split('').first) {
          return false;
        }
      }
    }
    return true;
  }
}
