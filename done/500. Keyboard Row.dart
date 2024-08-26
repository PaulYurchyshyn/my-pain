class Solution {
  List<String> findWords(List<String> words) {
    List<String> firstRow = ['q', 'w', 'e', 'r', 't', 'y', 'u', 'i', 'o', 'p'];
    List<String> secondRow = ['a', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l'];
    List<String> thirdRow = ['z', 'x', 'c', 'v', 'b', 'n', 'm'];
    List<String> result = [];
    int counter;
    for (String word in words) {
      List<String> sWord = word.toLowerCase().split('');
      counter = 0;
      for (var v = 0; v < sWord.length; v++) {
        for (var i = 0; i < firstRow.length; i++) {
          if (firstRow[i] == sWord[v]) {
            counter += 1;
          }
        }
      }
      if (counter == sWord.length) {
        result.add(word);
        continue;
      }
      counter = 0;
      for (var v = 0; v < sWord.length; v++) {
        for (var i = 0; i < secondRow.length; i++) {
          if (secondRow[i] == sWord[v]) {
            counter += 1;
          }
        }
      }
      if (counter == sWord.length) {
        result.add(word);
        continue;
      }
      counter = 0;
      for (var v = 0; v < sWord.length; v++) {
        for (var i = 0; i < thirdRow.length; i++) {
          if (thirdRow[i] == sWord[v]) {
            counter += 1;
          }
        }
      }
      if (counter == sWord.length) {
        result.add(word);
        continue;
      }
    }
    return result;
  }
}
