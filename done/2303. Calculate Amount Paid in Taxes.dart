class Solution {
  double calculateTax(List<List<int>> brackets, int income) {
    if (income == 0) {
      return 0;
    }
    double ans = 0;
    if (brackets[0][0] > income) {
      return income * (brackets[0][1] / 100) + ans;
    } else {
      ans += brackets[0][0] * (brackets[0][1] / 100);
      income -= brackets[0][0];
    }
    for (var i = 1; i < brackets.length; i++) {
      if ((brackets[i][0] - brackets[i - 1][0]) > income) {
        return income * (brackets[i][1] / 100) + ans;
      } else {
        ans += (brackets[i][0] - brackets[i - 1][0]) * (brackets[i][1] / 100);
        income -= (brackets[i][0] - brackets[i - 1][0]);
      }
    }
    return ans;
  }
}
