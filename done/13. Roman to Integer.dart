class Solution {
  int romanToInt(String s) {
    Map<String, int> romans = {
      'I': 1,
      'IV': 4,
      'V': 5,
      'IX': 9,
      'X': 10,
      'XL': 40,
      'L': 50,
      'XC': 90,
      'C': 100,
      'CD': 400,
      'D': 500,
      'CM': 900,
      'M': 1000
    };
    List<String> splitedS = s.split('');
    int result = 0;
    for (var i = 0; i < splitedS.length; i++) {
      if (i != splitedS.length - 1 &&
          romans.containsKey((splitedS[i] + splitedS[i + 1]))) {
        result += romans[splitedS[i] + splitedS[i + 1]]!;
        i++;
      } else if (romans.containsKey(splitedS[i])) {
        result += romans[splitedS[i]]!;
      }
    }
    return result;
  }
}
