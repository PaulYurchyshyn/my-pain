class Solution {
  int minimumBoxes(List<int> apple, List<int> capacity) {
    capacity.sort();
    int apples = 0;
    for (var e in apple) {
      apples += e;
    }
    if (apples == 0) return 0;
    int ans = 0;
    for (var i = capacity.length - 1; i >= 0; i--) {
      apples -= capacity[i];
      ans++;
      if (apples <= 0) return ans;
    }
    return ans;
  }
}