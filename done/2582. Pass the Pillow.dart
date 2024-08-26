class Solution {
  int passThePillow(int n, int time) {
    int timer = 0;
    int person = 1;
    bool reverse = false;
    while (timer < time) {
      if (person <= n) {
        if (!reverse) {
          person++;
        } else {
          person--;
        }
        if (person == n && !reverse) {
          reverse = true;
        }
        if (person == 1 && reverse) {
          reverse = false;
        }
      }
      timer++;
    }
    return person;
  }
}
