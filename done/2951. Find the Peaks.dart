class Solution {
  List<int> findPeaks(List<int> mountain) {
    List<int> result = [];
    for (var i = 1; i < mountain.length - 1; i++) {
      if (mountain[i - 1] < mountain[i] && mountain[i] > mountain[i + 1]) {
        result.add(mountain[i - 1]);
      }
    }
    return result;
  }
}
