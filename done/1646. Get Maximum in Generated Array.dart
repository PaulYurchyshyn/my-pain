class Solution {
  int getMaximumGenerated(int n) {
    List<int> arr = [];
    for (var i = 0; i <= n; i++) {
      if (i < 2) {
        arr.add(i);
        continue;
      }
      if (i % 2 == 0) {
        arr.add(arr[i ~/ 2]);
      } else {
        arr.add(arr[i ~/ 2] + arr[i ~/ 2 + 1]);
      }
      print(arr);
    }
    arr.sort();
    return arr.last;
  }
}
