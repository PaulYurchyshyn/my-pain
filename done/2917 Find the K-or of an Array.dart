class Solution {
  int findKOr(List<int> nums, int k) {
    int ans = 0;
    List<String> bitResult = [];
    List<int> countBits = [];
    String stringAns = '';

    if (k == 1) {
      for (var e in nums) {
        ans |= e;
      }
      return ans;
    }

    int pow(int x, int y) {
      int ans = 1;
      for (var i = 0; i < y; i++) ans = ans * x;
      return ans;
    }

    String decToBit(int n) {
      String ans = '';

      while (n > 0) {
        int temp = n % 2;
        if (temp == 1) {
          n--;
          n ~/= 2;
          ans = '1' + ans;
        } else {
          n ~/= 2;
          ans = '0' + ans;
        }
      }

      return ans;
    }

    int binToDec(String n) {
      int ans = 0;
      for (var i = 0; i < n.length; i++) {
        ans += (int.parse(n[i]) * pow(2, n.length - 1 - i));
      }
      return ans;
    }

    for (var e in nums) {
      bitResult.add(decToBit(e));
    }

    int maxLength = 0;
    for (var e in bitResult) {
      int temp = e.length;
      if (temp > maxLength) maxLength = temp;
    }

    for (var i = 0; i < bitResult.length; i++) {
      while (bitResult[i].length != maxLength) {
        bitResult[i] = '0' + bitResult[i];
      }
    }

    for (var i = 0; i < maxLength; i++) countBits.add(0);

    for (var e in bitResult) {
      for (var i = 0; i < e.length; i++) {
        if (e[i] == '1') {
          countBits[i]++;
        }
      }
    }

    for (var i = 0; i < countBits.length; i++) {
      if (countBits[i] >= k) {
        stringAns += '1';
      } else {
        stringAns += '0';
      }
    }

    ans = binToDec(stringAns);

    return ans;
  }
}
