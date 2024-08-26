class Solution {
  List<String> splitWordsBySeparator(List<String> words, String separator) {
    List<String> result = [];
    for (var i = 0; i < words.length; i++) {
      for (var j = 0; j < words[i].split(separator).length; j++) {
        if (words[i].split(separator)[j] == '') {
          continue;
        }
        result.add(words[i].split(separator)[j]);
      }
    }
    return result;
  }
}
