class Solution {
  int countCompleteDayPairs(List<int> hours) {
    int result = 0;
    for (var i = 0; i < hours.length - 1; i++) {
      for (var j = i + 1; j < hours.length; j++) {
        if ((hours[i] + hours[j]) % 24 == 0) result++;
      }
    }
    return result;
  }
}
