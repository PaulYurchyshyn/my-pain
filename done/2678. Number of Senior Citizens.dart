class Solution {
  int countSeniors(List<String> details) {
    int counter = 0;
    for (var e in details) {
      if (int.parse(e[11] + e[10]) > 60) counter++;
    }
    return counter;
  }
}
