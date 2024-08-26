class Solution {
  int calPoints(List<String> operations) {
    int _sum(List<int> nums) {
      int ans = 0;
      for (var e in nums) {
        ans += e;
      }
      return ans;
    }

    List<int> score = [];
    for (var e in operations) {
      switch (e) {
        case 'C':
          score.removeLast();
          break;
        case 'D':
          score.add(score.last * 2);
          break;
        case '+':
          score.add(score[score.length - 1] + score[score.length - 2]);
          break;
        default:
          score.add(int.parse(e));
      }
    }
    return _sum(score);
  }
}
