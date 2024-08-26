class Solution {
  List<int> findDisappearedNumbers(List<int> nums) {
    nums.sort();
    List<int> result = [];
    int j = 1;
    for (var e in nums) {
      if (j != e) {
        result.add(e);
      }
      j++;
    }
    return result;
  }
}
