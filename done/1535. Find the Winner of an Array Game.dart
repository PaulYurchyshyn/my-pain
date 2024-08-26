class Solution {
  int getWinner(List<int> arr, int k) {
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
      return arr[0] > arr[1] ? arr[0] : arr[1];
    }

    List<int> result = _maxSkill(arr);
    if (arr.length - 1 < k) {
      return result[0];
    }

    int winnerPosition = 0;
    int i = 1;
    int wins = 0;
    while (wins < k) {
      if (i == arr.length) {
        i = 0;
      }
      if (i == winnerPosition) {
        continue;
      }
      if (arr[winnerPosition] > arr[i]) {
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

    return arr[winnerPosition];
  }
}
