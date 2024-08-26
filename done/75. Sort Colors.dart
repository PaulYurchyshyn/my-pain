class Solution {
  //selection sort
  void sortColors(List<int> nums) {
    int n = nums.length;
    for (int i = 0; i < n - 1; i++) {
      int minIndex = i;
      for (int j = i + 1; j < n; j++) {
        if (nums[j] < nums[minIndex]) {
          minIndex = j;
        }
      }
      int temp = nums[minIndex];
      nums[minIndex] = nums[i];
      nums[i] = temp;
    }
  }
}
