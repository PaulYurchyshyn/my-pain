class Solution {
  List<String> findRelativeRanks(List<int> score) {
    List<int> temp = List.from(score);
    List<String> ans = List.filled(score.length, '');
    List<String> places = ["Gold Medal", "Silver Medal", "Bronze Medal"];
    temp.sort((b, a) => a.compareTo(b));
    for (var i = 0; i < ans.length; i++) {
      for (var j = 0; j < ans.length; j++) {
        if (temp[i] == score[j]) {
          ans[j] = i + 1 < 4 ? places[i] : '${i + 1}';
          break;
        }
      }
    }
    return ans;
  }
}
