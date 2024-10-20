class Solution {
  bool equalFrequency(String word) {
    Map<String, int> map = {};
    for (var i = 0; i < word.length; i++) {
      String currentLetter = word[i];
      if (map.containsKey(currentLetter)) {
        map[currentLetter] = map[currentLetter]! + 1;
      } else {
        map[currentLetter] = 1;
      }
    }

    for (var j = 0; j < map.length; j++) {
      List<int> tempArr = map.values.toList();
      tempArr[j]--;
      if (tempArr[j] == 0) {
        tempArr.removeAt(j);
      }
      if (tempArr.toSet().length == 1) {
        return true;
      }
    }
    return false;
  }
}
