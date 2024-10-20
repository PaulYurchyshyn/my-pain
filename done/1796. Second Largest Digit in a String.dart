class Solution {
  int secondHighest(String s) {
    List<int> allInts = [];
    for (var i = 0; i < s.length; i++) {
      int? temp = int.tryParse(s[i]);
      if (temp != null && !allInts.contains(temp)) {
        allInts.add(temp);
      }
    }
    if (allInts.length <= 1) {
      return -1;
    } else {
      allInts.sort();
      return allInts[allInts.length - 2];
    }
  }
}
