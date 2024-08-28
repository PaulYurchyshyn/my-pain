class Solution {
  int maxBottlesDrunk(int numBottles, int numExchange) {
    int ans = 0;
    int emptyBottles = 0;
    while (numBottles > 0) {
      numBottles--;
      emptyBottles++;
      if (emptyBottles >= numExchange) {
        emptyBottles -= numExchange;
        numExchange++;
        numBottles++;
      }
      ans++;
    }
    return ans;
  }
}
