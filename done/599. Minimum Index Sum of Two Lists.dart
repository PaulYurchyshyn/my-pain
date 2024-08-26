class Solution {
  List<String> findRestaurant(List<String> l1, List<String> l2) {
    List<String> result = [];
    int minIndexSum = 10000;
    for (var i = 0; i < l1.length; i++) {
      if (l2.contains(l1[i])) {
        int temp = l2.indexWhere((m) => l1[i] == m) + i;
        if (minIndexSum >= temp) {
          if (minIndexSum == temp) {
            result.add(l1[i]);
          } else {
            result.clear();
            result.add(l1[i]);
            minIndexSum = temp;
          }
        }
      }
    }
    return result;
  }
}
