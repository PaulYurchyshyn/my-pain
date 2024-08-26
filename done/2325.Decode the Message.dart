class Solution {
  String decodeMessage(String key, String message) {
    Set<String> line = key.split('').toSet();
    line.remove(' ');
    Map<String, String> encryption = {};
    int j = 0;
    for (var i = 97; i <= 122; i++) {
      encryption[line.elementAt(j)] = String.fromCharCode(i);
      j++;
    }
    String result = '';
    for (var i = 0; i < message.length; i++) {
      if (message[i] != ' ') {
        result += encryption[message[i]]!;
      } else {
        result += ' ';
      }
    }
    return result;
  }
}
