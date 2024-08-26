class Solution {
  String reverseVowels(String s) {
    String result = '';
    List<String> splitS = s.split('');
    List<String> rsplitS = [];
    List<String> vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'];
    for (var i = splitS.length - 1; i >= 0; i--) {
      if (vowels.contains(splitS[i])) {
        rsplitS.add(splitS[i]);
      }
    }
    int j = 0;
    for (var i = 0; i < splitS.length; i++) {
      if (vowels.contains(splitS[i])) {
        result += rsplitS[j];
        j++;
      } else {
        result += splitS[i];
      }
    }
    return result;
  }
}
