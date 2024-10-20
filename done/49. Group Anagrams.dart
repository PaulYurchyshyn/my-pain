class Solution {
  List<List<String>> groupAnagrams(List<String> strs) {
    List<String> keys = [];
    List<List<String>> ans = [];
    for (var e in strs) {
      List<String> tempKey = e.split('');
      tempKey.sort();
      String key = tempKey.join();
      if (keys.contains(key)) {
        int i = keys.indexOf(key);
        ans[i].add(e);
      } else {
        keys.add(key);
        int i = keys.indexOf(key);
        ans[i].add(e);
      }
    }
    return ans;
  }
}
