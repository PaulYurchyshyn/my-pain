class Solution {
  int wateringPlants(List<int> plants, int capacity) {
    int wateringCan = capacity;
    int ans = 0;
    int i = 0;
    while (plants.last > 0) {
      if (plants[i] <= wateringCan) {
        wateringCan -= plants[i];
        plants[i] = 0;
        ans++;
        i++;
      } else {
        ans += 2 * i;
        wateringCan = capacity;
      }
    }
    return ans;
  }
}
