class Solution {
  int numRookCaptures(List<List<String>> board) {
    bool isPawn(String s) {
      if (s == 'p') return true;
      return false;
    }

    bool isBishop(String s) {
      if (s == 'B') return true;
      return false;
    }

    List<int> rockPos = [0, 0];
    cycle1:
    for (var i = 0; i < 8; i++) {
      for (var j = 0; j < 8; j++) {
        if (board[i][j] == 'R') {
          rockPos = [i, j];
          break cycle1;
        }
      }
    }
    int ans = 0;
    for (var i = rockPos[0] + 1; i < 8; i++) {
      String s = board[i][rockPos[1]];
      if (isPawn(s)) {
        ans++;
        break;
      }
      if (isBishop(s)) break;
    }
    for (var i = rockPos[0] - 1; i >= 0; i--) {
      String s = board[i][rockPos[1]];
      if (isPawn(s)) {
        ans++;
        break;
      }
      if (isBishop(s)) break;
    }
    for (var i = rockPos[1] + 1; i < 8; i++) {
      String s = board[rockPos[0]][i];
      if (isPawn(s)) {
        ans++;
        break;
      }
      if (isBishop(s)) break;
    }
    for (var i = rockPos[1]; i >= 0; i--) {
      String s = board[rockPos[0]][i];
      if (isPawn(s)) {
        ans++;
        break;
      }
      if (isBishop(s)) break;
    }
    return ans;
  }
}
