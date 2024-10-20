class Solution {
  List<int> finalPrices(List<int> prices) {
    List<int> ans = [];
    loop1:
    for (var i = 0; i < prices.length; i++) {
      for (var j = i + 1; j < prices.length; j++) {
        if (j > i && prices[i] >= prices[j]) {
          ans.add(prices[i] - prices[j]);
          continue loop1;
        }
      }
      ans.add(prices[i]);
    }
    return ans;
  }
}
