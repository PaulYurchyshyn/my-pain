class Solution {
  List<int> resultsArray(List<int> nums, int k) {
    bool _isAscendingOrder(List<int> nums) {
      bool ans = true;
      for (var i = 0; i < nums.length - 1; i++) {
        if (nums[i] + 1 != nums[i + 1]) return false;
      }
      return ans;
    }

    List<int> ans = [];

    for (var i = 0; i <= nums.length - k; i++) {
      List<int> temp = nums.sublist(i, i + k);
      if (_isAscendingOrder(temp)) {
        ans.add(temp.last);
      } else {
        ans.add(-1);
      }
    }

    return ans;
  }
}
