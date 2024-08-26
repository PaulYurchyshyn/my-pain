class Solution {
  List<int> findIndices(
      List<int> nums, int indexDifference, int valueDifference) {
    int _absDiff(int x, int y) {
      if (x - y > 0) {
        return x - y;
      } else {
        return -1 * (x - y);
      }
    }

    for (var i = 0; i < nums.length; i++) {
      for (var j = i; j < nums.length; j++) {
        if (_absDiff(i, j) >= indexDifference &&
            _absDiff(nums[i], nums[j]) >= valueDifference) {
          return [i, j];
        }
      }
    }
    return [-1, -1];
  }
}
