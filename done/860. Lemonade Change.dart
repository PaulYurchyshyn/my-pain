class Solution {
  bool lemonadeChange(List<int> bills) {
    List<int> banknotes = [0, 0, 0]; // 5$ 10$ 20$
    for (var e in bills) {
      switch (e) {
        case 5:
          banknotes[0]++;
          break;
        case 10:
          if (banknotes[0] > 0) {
            banknotes[0]--;
            banknotes[1]++;
          } else {
            return false;
          }
          break;
        case 20:
          if (banknotes[0] > 2 || (banknotes[0] > 0 && banknotes[1] > 0)) {
            if (banknotes[0] > 0 && banknotes[1] > 0) {
              banknotes[0]--;
              banknotes[1]--;
              banknotes[2]++;
            } else {
              banknotes[0] -= 3;
              banknotes[2]++;
            }
          } else {
            return false;
          }
          break;
      }
    }
    return true;
  }
}
