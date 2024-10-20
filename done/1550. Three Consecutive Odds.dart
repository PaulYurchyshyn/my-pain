class Solution {
  bool threeConsecutiveOdds(List<int> arr) {
    for (var i = 0; i < arr.length - 2; i++) {
      List<int> tempArr = arr.sublist(i, i + 3);
      if (tempArr[0] % 2 == 1 && tempArr[1] % 2 == 1 && tempArr[2] % 2 == 1) {
        return true;
      }
    }
    return false;
  }
}
