class Solution {
  List<int> replaceElements(List<int> arr) {
    int _max(List<int> arr, int last_max) {
      if (arr.contains(last_max)) {
        return last_max;
      }
      int temp = arr[0];
      for (var e in arr) if (e > temp) temp = e;
      return temp;
    }

    int temp_max = 0;
    for (var i = 0; i < arr.length; i++) {
      if (arr.length - 1 == i) {
        arr[i] = -1;
        continue;
      }
      List<int> temp = arr.sublist(i + 1);
      temp_max = _max(temp, temp_max);
      arr[i] = temp_max;
    }
    return arr;
  }
}
