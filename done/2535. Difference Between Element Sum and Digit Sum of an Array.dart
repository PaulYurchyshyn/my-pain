class Solution {
  int differenceOfSum(List<int> nums) {
    int sn = 0;
    int sd = 0;
    for (var e in nums) {
      sn += e;
      for (var i in e.toString().split('')) {
        sd += int.parse(i);
      }
    }
    return sn - sd;
  }
}
