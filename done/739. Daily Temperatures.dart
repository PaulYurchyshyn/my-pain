class Solution {
  List<int> dailyTemperatures(List<int> temperatures) {
    int indexMaxElement(List<int> nums, int baseElement,
        [int lastBiggestElement = 0]) {
      if (nums[lastBiggestElement] > nums[baseElement] &&
          lastBiggestElement > baseElement) {
        if (nums[baseElement - 1] > nums[baseElement]) {
          for (var i = baseElement + 1; i < lastBiggestElement; i++) {
            if (nums[baseElement] < nums[i]) {
              return i;
            }
          }
        }
        return lastBiggestElement;
      }
      for (var i = baseElement + 1; i < nums.length; i++) {
        if (nums[baseElement] < nums[i]) {
          return i;
        }
      }
      return 0;
    }

    if (temperatures.toSet().length == 1) {
      return List.filled(temperatures.length, 0);
    }

    int temp = 0;
    List<int> ans = [];
    for (var i = 0; i < temperatures.length; i++) {
      temp = indexMaxElement(temperatures, i, temp);
      if (temp - i > 0) {
        ans.add(temp - i);
      } else {
        ans.add(0);
      }
    }
    return ans;
  }
}
