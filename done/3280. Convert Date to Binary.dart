class Solution {
  String convertDateToBinary(String date) {
    String decToBin(int n) {
      String ans = '';
      while (n > 0) {
        if (n % 2 == 1)
          ans = '1' + ans;
        else
          ans = '0' + ans;
        n ~/= 2;
      }
      return ans;
    }

    List<String> ans = date.split('-');
    for (var i = 0; i < ans.length; i++) {
      ans[i] = decToBin(int.parse(ans[i]));
    }
    return ans.join('-');
  }
}
