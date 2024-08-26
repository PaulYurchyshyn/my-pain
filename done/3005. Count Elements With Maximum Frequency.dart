class Solution {
  int maxFrequencyElements(List<int> nums) {
    var result = nums.toSet();
    print(result);
    Map<int, int> count = {};
    int counter = 0;
    for (var i in result) {
      for (var j in nums) {
        if (i == j) {
          counter++;
        }
      }
      count[i] = counter;
      counter = 0;
    }
    int maximum = 0;
    print(count.values);
    for (var i in count.values) {
      if (i > maximum) {
        maximum = i;
      }
    }
    int endsum = 0;
    for (var i in count.values) {
      if (i == maximum) {
        endsum += i;
      }
    }
    return endsum;
  }
}
