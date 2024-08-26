class Solution {
  bool canPlaceFlowers(List<int> flowerbed, int n) {
    if (n == 0) return true;
    if (flowerbed.length < 3) {
      if (n <= 1 && !flowerbed.contains(1)) {
        return true;
      } else {
        return false;
      }
    }

    if (flowerbed[0] == 0 && flowerbed[1] == 0) {
      flowerbed[0] = 1;
      n--;
    }
    if (flowerbed[flowerbed.length - 1] == 0 &&
        flowerbed[flowerbed.length - 2] == 0) {
      flowerbed[flowerbed.length - 1] = 1;
      n--;
    }
    for (var i = 1; i < flowerbed.length - 1 && n > 0; i++) {
      if (flowerbed[i - 1] == 0 && flowerbed[i] == 0 && flowerbed[i + 1] == 0) {
        flowerbed[i] = 1;
        n--;
      }
    }

    return n <= 0;
  }
}
