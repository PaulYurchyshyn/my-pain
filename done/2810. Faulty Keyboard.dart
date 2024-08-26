class Solution {
  String finalString(String s) {
    List<String> result = [];
    List<String> temp;
    temp = s.split('');
    for (var i = 0; i < temp.length; i++) {
      if (temp[i] == 'i') {
        List<String> tmp = [];
        for (var j = result.length - 1; j >= 0; j--) {
          tmp.add(result[j]);
        }
        result = tmp;
        continue;
      }
      result.add(temp[i]);
    }
    return result.join('');
  }
}
