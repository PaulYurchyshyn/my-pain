class Solution {
  int buyChoco(List<int> prices, int money) {
    int min = money;
    for (var i = 0; i < prices.length; i++) {
      for (var j = 0; j < prices.length; j++) {
        if (i != j && prices[i] + prices[j] < min) {
          min = prices[i] + prices[j];
        }
      }
    }
    return money - min;
  }
}
