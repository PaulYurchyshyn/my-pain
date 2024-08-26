class Solution {
  List<int> relativeSortArray(List<int> arr1, List<int> arr2) {
    List<int> result = [];
    for (var i = 0; i < arr2.length; i++) {
      for (var j = 0; j < arr1.length; j++) {
        if (arr1.contains(arr2[i])) {
          result.add(arr2[i]);
          arr1.remove(arr2[i]);
        } else {
          break;
        }
      }
    }
    arr1.sort();
    result.addAll(arr1);
    return result;
  }
}
