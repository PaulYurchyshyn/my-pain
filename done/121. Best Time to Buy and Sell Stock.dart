class Solution {
  int maxProfit(List<int> prices) {
    int maxProfit = 0;
    int maxPrice = prices.last;
    for (var i = prices.length - 2; i >= 0; i--) {
      if (maxPrice - prices[i] > maxProfit) {
        maxProfit = maxPrice - prices[i];
      }
      if (prices[i] > maxPrice) {
        maxPrice = prices[i];
      }
    }
    return maxProfit;
  }
}