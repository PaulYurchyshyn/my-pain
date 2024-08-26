class Solution {
  List<int> findThePrefixCommonArray(List<int> A, List<int> B) {
    List<int> result = [];
    for (var i = 0; i < A.length; i++) {
      List<int> sunA = A.sublist(0, i + 1);
      List<int> sunB = B.sublist(0, i + 1);
      int c = 0;
      for (var j = 0; j < i + 1; j++) {
        if (sunB.contains(sunA[j])) {
          c++;
        }
      }
      result.add(c);
    }
    return result;
  }
}
