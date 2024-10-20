class Solution {
  List<List<int>> threeSum(List<int> nums) {
    List<List<int>> ans = [];
    List<String> ansCode = [];
    nums.sort();

    for (var i = 0; i < nums.length; i++) {
      int right = nums.length - 1;
      int left = i + 1;
      while (left < right) {
        int temp = nums[i] + nums[right] + nums[left];
        if (temp == 0) {
          List<int> tempArr = [nums[i], nums[right], nums[left]];
          tempArr.sort();
          String code = tempArr.toString();
          if (!ansCode.contains(code)) {
            ans.add(tempArr);
            ansCode.add(code);
          }
          right--;
          left++;
        }
        if (temp > 0) {
          right--;
          continue;
        }
        if (temp < 0) {
          left++;
          continue;
        }
      }
    }
    return ans;
  }
}
