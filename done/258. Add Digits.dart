class Solution {
  int addDigits(int num) {
    List nums = num.toString().split('').toList();
    int result = 0;
    for (var element in nums) {
      result += int.parse(element);
    }
    if (result > 10) {
      result = addDigits(result);
    }
    return result;
  }
}
