class Solution {
  int maximumValue(List<String> strs) {
    int value(String str) {
      try {
        return int.parse(str);
      } catch (e) {
        return str.length;
      }
    }

    int ans = 0;
    for (var str in strs) {
      int temp = value(str);
      ans = ans > temp ? ans : temp;
    }
    return ans;
  }
}
