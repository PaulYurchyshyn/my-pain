class Solution {
  int generateKey(int num1, int num2, int num3) {
    int _min(List<int> nums) {
      int ans = 10;
      for (var e in nums) {
        if (e < ans) {
          ans = e;
        }
      }
      return ans;
    }

    String _fullNum(String num) {
      while (num.length < 4) {
        num = '0' + num;
      }
      return num;
    }

    String snum1 = _fullNum(num1.toString());
    String snum2 = _fullNum(num2.toString());
    String snum3 = _fullNum(num3.toString());

    String ans = '';
    for (var i = 0; i < 4; i++) {
      List<int> arr = [
        int.parse(snum1[i]),
        int.parse(snum2[i]),
        int.parse(snum3[i])
      ];
      String temp = _min(arr).toString();
      ans += temp;
    }
    return int.parse(ans);
  }
}
