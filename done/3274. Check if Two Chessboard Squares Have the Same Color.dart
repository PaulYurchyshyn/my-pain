class Solution {
  bool checkTwoChessboards(String c1, String c2) {
    bool isBlackSquare(String c) {
      if ((['a', 'c', 'e', 'g'].contains(c[0]) &&
              ['1', '3', '5', '7'].contains(c[1])) ||
          (['b', 'd', 'f', 'h'].contains(c[0]) &&
              ['2', '4', '6', '8'].contains(c[1]))) {
        return true;
      }
      return false;
    }

    bool colorC1 = isBlackSquare(c1);
    bool colorC2 = isBlackSquare(c2);
    if ((colorC1 && colorC2) || (!colorC1 && !colorC2)) {
      return true;
    }
    return false;
  }
}
