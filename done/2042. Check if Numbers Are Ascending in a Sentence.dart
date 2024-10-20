class Solution {
  bool areNumbersAscending(String s) {
    List<String> splitedString = s.split(' ');
    List<int> numbersInString = [];
    for (var e in splitedString) {
      int? temp = int.tryParse(e);
      if (temp != null) {
        numbersInString.add(temp);
      }
    }
    for (var i = 0; i < numbersInString.length - 1; i++) {
      if (numbersInString[i] >= numbersInString[i + 1]) return false;
    }
    return true;
  }
}
