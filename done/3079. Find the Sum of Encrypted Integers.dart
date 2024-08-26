class Solution {
  int sumOfEncryptedInt(List<int> nums) {
    int result = 0;

    int encrypt(int num) {
      int m = 0;
      for (var e in num.toString().split('')) {
        if (int.parse(e) > m) {
          m = int.parse(e);
        }
      }
      String result = '';
      for (var i = 0; i < num.toString().length; i++) {
        result += m.toString();
      }
      return int.parse(result);
    }

    for (var e in nums) {
      result += encrypt(e);
    }
    return result;
  }
}
