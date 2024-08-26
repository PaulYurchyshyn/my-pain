class Solution {
  int findWinningPlayer(List<int> skills, int k) {
    List<int> _maxSkill(List<int> arr) {
      int max = 0;
      int pos = 0;
      for (var i = 0; i < arr.length; i++) {
        if (arr[i] > max) {
          max = arr[i];
          pos = i;
        }
      }
      return [max, pos];
    }

    if (k == 1) {
      return skills[0] > skills[1] ? 0 : 1;
    }

    List<int> result = _maxSkill(skills);

    if (skills.length - 1 < k) {
      return result[1];
    }

    int winnerPosition = 0;
    int i = 1;
    int wins = 0;
    while (wins < k) {
      if (i == skills.length) {
        i = 0;
      }
      if (i == winnerPosition) {
        continue;
      }
      if (skills[winnerPosition] > skills[i]) {
        wins++;
        i++;
        continue;
      } else {
        wins = 1;
        winnerPosition = i;
        i++;
        continue;
      }
    }

    return winnerPosition;
  }
}
