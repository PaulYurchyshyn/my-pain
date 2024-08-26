class Solution {
  int minimumChairs(String s) {
    int minChairs = 0;
    int await = 0;
    for (var i = 0; i < s.length; i++) {
      if (s[i] == 'E') {
        await++;
      } else {
        await--;
      }
      if (await > minChairs) {
        minChairs = await;
      }
    }
    return minChairs;
  }
}
