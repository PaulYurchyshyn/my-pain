class Solution {
  double trimMean(List<int> arr) {
    arr.sort();
    int ans = 0;
    for (var i = arr.length ~/ 20; i < arr.length - arr.length ~/ 20; i++) {
      ans += arr[i];
    }
    return ans / arr.length - 2 * arr.length / 20;
  }
}
