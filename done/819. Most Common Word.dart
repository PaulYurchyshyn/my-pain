class Solution {
  String mostCommonWord(String paragraph, List<String> banned) {
    Map<String, int> ans = {};
    List<String> symbols = ['!', '?', '\'', ',', ';', '.'];
    for (var i = 0; i < paragraph.length; i++) {
      if (symbols.contains(paragraph[i])) {
        paragraph = paragraph.replaceRange(i, i + 1, ' ');
      }
    }
    banned.add('');
    List<String> words = paragraph.split(' ');
    for (var e in words) {
      e = e.toLowerCase().trim();
      if (banned.contains(e)) {
        continue;
      }
      if (!ans.containsKey(e)) {
        ans[e] = 1;
      } else {
        ans[e] = ans[e]! + 1;
      }
    }
    String finalAns = '';
    int temp = 0;
    for (var e in ans.keys) {
      if (ans[e]! > temp) {
        temp = ans[e]!;
        finalAns = e;
      }
    }
    return finalAns;
  }
}
