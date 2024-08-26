class Solution {
  int countSegments(String s) {
    List<String> t_res = s.split(' ');
    while (t_res.contains('')) {
      t_res.remove('');
    }
    return t_res.length;
  }
}
