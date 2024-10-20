class Solution {
  List<String> stringMatching(List<String> words) {
    List<String> ans = [];
    for (var i = 0; i < words.length; i++) {
      for (var j = 0; j < words.length; j++) {
        if (i != j && words[i].contains(words[j]) && !ans.contains(words[j])) {
          ans.add(words[j]);
        }
      }
    }
    return ans;
  }
}
