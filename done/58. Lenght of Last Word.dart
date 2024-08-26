class Solution {
  int lengthOfLastWord(String s) {
    List<String> result = [];
    String word = '';
    int i = 0;
    for (var letter in s.split('')) {
      i++;
      print(i);
      if (letter != ' ') {
        word += letter;
      } else if (letter == ' ' && word != '') {
        result.add(word);
        word = '';
      }
      if (s.split('').length == i && letter != ' ') {
        result.add(word);
      }
    }
    print(result);
    return result.last.length;
  }
}
