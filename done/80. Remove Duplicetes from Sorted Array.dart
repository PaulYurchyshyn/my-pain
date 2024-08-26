class Solution {
  int removeDuplicates2(List<int> nums) {
    List<int> result = [];
    int count = 0;
    int r = -1;
    for (var e in nums) {
      if (r != e) {
        count = 0;
      }
      if (count < 2) {
        result.add(e);
        count++;
        r = e;
      }
    }
    print(result);
    nums.replaceRange(0, result.length, result);
    return result.length;
  }
}
