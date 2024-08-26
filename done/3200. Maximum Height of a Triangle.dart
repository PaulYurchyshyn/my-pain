class Solution {
  int maxHeightOfTriangle(int red, int blue) {
    int count(int red, int blue, bool line) {
      int balls = 1, height = 0;
      while (true) {
        if (line) {
          if (red - balls < 0) break;
          red -= balls;
          height++;
          balls++;
          line = false;
        } else {
          if (blue - balls < 0) break;
          blue -= balls;
          height++;
          balls++;
          line = true;
        }
      }
      return height;
    }

    int temp1 = count(red, blue, true);
    int temp2 = count(red, blue, false);
    if (temp1 > temp2) {
      return temp1;
    } else {
      return temp2;
    }
  }
}
