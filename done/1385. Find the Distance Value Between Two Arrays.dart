class Solution {
  int findTheDistanceValue(List<int> arr1, List<int> arr2, int d) {
    int abs(int n) => n < 0 ? -n : n;
    bool skip = false;
    int ans = 0;
    for (var i = 0; i < arr1.length; i++) {
      for (var j = 0; j < arr2.length; j++) {
        int n = abs(arr1[i] - arr2[j]);
        if (d >= n) {
          skip = true;
          break;
        }
      }
      if (skip)
        skip = false;
      else
        ans++;
    }
    return ans;
  }
}
