class Solution {
  List<int> resultArray(List<int> nums) {
    List<int> arr1 = [], arr2 = [];
    arr1.add(nums[0]);
    arr2.add(nums[1]);
    for (var i = 2; i < nums.length; i++) {
      if (arr1.last > arr2.last) {
        arr1.add(nums[i]);
      } else {
        arr2.add(nums[i]);
      }
    }
    arr1.addAll(arr2);
    return arr1;
  }
}
