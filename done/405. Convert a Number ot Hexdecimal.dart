import 'dart:math';

class Solution {
  String toHex(int num) {
    int tnum = num;
    if (tnum < 0) tnum = pow(2, 32).toInt() + tnum;
    Map<int, String> vocab = {
      0: '0',
      1: '1',
      2: '2',
      3: '3',
      4: '4',
      5: '5',
      6: '6',
      7: '7',
      8: '8',
      9: '9',
      10: 'a',
      11: 'b',
      12: 'c',
      13: 'd',
      14: 'e',
      15: 'f'
    };
    String result = '';
    while (tnum % 16 >= 0) {
      result = vocab[tnum % 16]! + result;
      tnum ~/= 16;
    }
    return result;
  }
}
