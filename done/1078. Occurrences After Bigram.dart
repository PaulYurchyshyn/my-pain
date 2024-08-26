class Solution {
  List<String> findOcurrences(String text, String first, String second) {
    List<String> words = text.split(' ');
    List<String> ans = [];
    for (var i = 0; i < words.length - 2; i++) {
      if (words[i] == first && words[i + 1] == second) {
        ans.add(words[i + 2]);
      }
    }
    return ans;
  }
}
