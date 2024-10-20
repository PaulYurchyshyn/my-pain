class Solution {
  Map<String, int> commonMap(Map<String, int> map1, Map<String, int> map2) {
    Map<String, int> ans = {};
    for (var e in map1.keys) {
      if (map2.containsKey(e)) {
        ans[e] = map1[e]! > map2[e]! ? map2[e]! : map1[e]!;
      }
    }
    return ans;
  }

  bool firstIteration = true;
  List<String> commonChars(List<String> words) {
    Map<String, int> ans = {};

    for (var e in words) {
      Map<String, int> temp = {};
      List<String> word = e.split('');
      for (var l in word) {
        if (!temp.containsKey(l)) {
          temp[l] = 1;
        } else {
          temp[l] = temp[l]! + 1;
        }
      }
      if (firstIteration) {
        ans = temp;
        firstIteration = !firstIteration;
        continue;
      }
      ans = commonMap(ans, temp);
    }
    List<String> ansList = [];
    for (var e in ans.keys) {
      for (var i = 0; i < ans[e]!; i++) {
        ansList.add(e);
      }
    }
    return ansList;
  }
}
