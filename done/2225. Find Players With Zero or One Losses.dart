class Solution {
  List<List<int>> findWinners(List<List<int>> matches) {
    Map<int, int> result = {};
    for (var e in matches) {
      for (var i = 0; i < 2; i++) {
        if (i == 0) {
          if (result[e[i]] == null) {
            result[e[i]] = 0;
          }
        } else {
          if (result[e[i]] == null) {
            result[e[i]] = 1;
          } else {
            int temp = result[e[i]]! + 1;
            result[e[i]] = temp;
          }
        }
      }
    }
    List<int> winner = [], oneLose = [];
    List keys = result.keys.toList();
    keys.sort();
    for (var e in keys) {
      int temp = result[e]!;
      if (temp == 0) winner.add(e);
      if (temp == 1) oneLose.add(e);
    }
    return [winner, oneLose];
  }
}
