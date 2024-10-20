class Solution {
  List<int> arrayRankTransform(List<int> arr) {
    List<int> tempArr = List.from(arr);
    tempArr.sort();
    Map<int, int> rankNum = {};
    int i = 1;
    for (var e in tempArr.toSet()) {
      if (!rankNum.containsKey(e)) {
        rankNum[e] = i;
        i++;
      }
    }
    List<int> ans = [];
    for (var e in arr) {
      ans.add(rankNum[e]!);
    }
    return ans;
  }
}