class Solution {
  int mostFrequentEven(List<int> nums) {
    nums.sort();
    if (nums.length == 1 && nums[0] % 2 == 0) return nums[0];
    Set<int> setNums = {};
    for (var num in nums) {
      if (num % 2 == 0) setNums.add(num);
    }
    if (setNums.isEmpty) return -1;
    Map<int, int> mapnums = {};
    for (var n in setNums) {
      int i = 0;
      for (var m in nums) {
        if (n == m) i++;
      }
      mapnums[n] = i;
    }
    int max = 0, r = setNums.last;
    for (var e in mapnums.keys) {
      if (mapnums[e]! > max) max = mapnums[e]!;
    }
    for (var e in mapnums.keys) {
      if (mapnums[e]! == max && r > e) r = e;
    }
    return r;
  }
}
