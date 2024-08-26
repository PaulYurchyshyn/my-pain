class Solution {
  List<int> separateDigits(List<int> nums) {
    List<int> result = [];
    for (var e in nums) {
      List temp = e.toString().split('');
      for (var j in temp) {
        result.add(int.parse(j));
      }
    }
    return result;
  }
}
