class Solution {
  int countTestedDevices(List<int> batteryPercentages) {
    int ans = 0;
    for (var i = 0; i < batteryPercentages.length; i++) {
      if (batteryPercentages[i] > 0) {
        ans++;
        for (var j = 0; j < batteryPercentages.length; j++) {
          if (batteryPercentages[j] > 0) batteryPercentages[j]--;
        }
      }
    }
    return ans;
  }
}
