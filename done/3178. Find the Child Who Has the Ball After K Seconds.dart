class Solution {
  int numberOfChild(int n, int k) {
    int i = 0;
    int j = 0;
    bool direction = true;
    bool _change(bool direction) {
      return !direction;
    }

    while (i < k) {
      if (direction) {
        j++;
      } else {
        j--;
      }
      if (j == 0 || j == n - 1) {
        direction = _change(direction);
      }
      i++;
    }
    return j;
  }
}
