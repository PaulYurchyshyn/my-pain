class Solution {
  int numEquivDominoPairs(List<List<int>> dominoes) {
    int ans = 0;
    for (var i = 0; i < dominoes.length; i++) {
      for (var j = i + 1; j < dominoes.length; j++) {
        if (dominoes[i][0] == dominoes[j][0] &&
            dominoes[i][1] == dominoes[j][1]) {
          ans++;
          continue;
        }
        if (dominoes[i][0] == dominoes[j][1] &&
            dominoes[i][1] == dominoes[j][0]) {
          ans++;
          continue;
        }
      }
    }
    return ans;
  }
}
