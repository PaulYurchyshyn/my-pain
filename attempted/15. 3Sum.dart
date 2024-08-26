class Solution {
  List<List<int>> threeSum(List<int> nums) {
    List<List<int>> ans = [];
    List<String> keys = [];
    for (var i = 0; i < nums.length - 2; i++) {
      for (var j = i + 1; j < nums.length - 1; j++) {
        for (var k = j + 1; k < nums.length; k++) {
          int temp = nums[i] + nums[j] + nums[k];
          if (temp == 0) {
            List<int> tempList = [nums[i], nums[j], nums[k]];
            tempList.sort();
            if (!keys.contains(tempList.toString())) {
              keys.add(tempList.toString());
              ans.add(tempList);
            }
          }
        }
      }
    }
    return ans;
  }
}
